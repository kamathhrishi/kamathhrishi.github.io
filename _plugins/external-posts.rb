require 'date'
require 'feedjira'
require 'httparty'
require 'jekyll'

# Builds site.data['blog_posts'] for the blog index: the curated entries in
# _data/blog_posts.yml plus any newer posts from the RSS feeds listed under
# `external_sources`. Posts are linked to, not copied, so the full text lives
# only on the original site.
module ExternalPosts
  class ExternalPostsGenerator < Jekyll::Generator
    safe true
    priority :high

    USER_AGENT = 'Mozilla/5.0 (compatible; Jekyll blog index; +https://kamathhrishi.github.io)'.freeze

    def generate(site)
      posts = (site.data['blog_posts'] || []).map { |post| normalize(post) }
      known = posts.map { |post| canonical(post['url']) }

      (site.config['external_sources'] || []).each do |src|
        next unless src['rss_url']

        fetch_from_rss(src).each do |post|
          next if known.include?(canonical(post['url']))

          Jekyll.logger.info 'External posts:', "added #{post['url']}"
          posts << post
          known << canonical(post['url'])
        end
      end

      site.data['blog_posts'] = posts.sort_by { |post| post['date'] }.reverse
    end

    private

    def fetch_from_rss(src)
      Jekyll.logger.info 'External posts:', "fetching #{src['name']} feed #{src['rss_url']}"
      res = HTTParty.get(src['rss_url'], timeout: 20, headers: {
        'User-Agent' => USER_AGENT,
        'Accept' => 'application/rss+xml, application/xml;q=0.9, */*;q=0.8'
      })
      unless res.code == 200
        raise "HTTP #{res.code} (#{res.headers['content-type']}): #{res.body.to_s[0, 200].gsub(/\s+/, ' ')}"
      end

      Feedjira.parse(res.body).entries.map do |e|
        normalize(
          'title' => e.title,
          'url' => e.url,
          'date' => e.published,
          'description' => e.summary
        )
      end
    rescue StandardError => e
      Jekyll.logger.warn 'External posts:', "could not read #{src['rss_url']}, " \
        "listing only _data/blog_posts.yml. #{e.message}"
      []
    end

    def normalize(post)
      post = post.dup
      post['title'] = post['title'].to_s.strip
      post['description'] = post['description'].to_s.strip
      post['date'] = to_date(post['date'])
      post
    end

    def to_date(value)
      return value.to_date if value.respond_to?(:to_date)

      Date.parse(value.to_s)
    end

    def canonical(url)
      url.to_s.sub(/[?#].*\z/, '').chomp('/')
    end
  end
end
