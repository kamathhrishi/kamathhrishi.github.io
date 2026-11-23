require 'date'
require 'feedjira'
require 'httparty'
require 'jekyll'
require 'json'
require 'uri'

# Builds site.data['blog_posts'] for the blog index: the curated entries in
# _data/blog_posts.yml plus any newer posts from the RSS feeds listed under
# `external_sources`. Posts are linked to, not copied, so the full text lives
# only on the original site.
module ExternalPosts
  class ExternalPostsGenerator < Jekyll::Generator
    safe true
    priority :high

    USER_AGENT = 'Mozilla/5.0 (compatible; Jekyll blog index; +https://kamathhrishi.github.io)'.freeze

    # Substack's Cloudflare answers GitHub Actions runners with a 403 challenge
    # page, so when the feed can't be read directly it is read through rss2json,
    # which needs no key and returns the latest 10 posts.
    RELAY_URL = 'https://api.rss2json.com/v1/api.json?rss_url='.freeze

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

      # Newest first. Posts on the same date keep their order in the YAML file.
      site.data['blog_posts'] = posts.each_with_index.sort_by { |post, i| [post['date'], -i] }.map(&:first).reverse
    end

    private

    def fetch_from_rss(src)
      Jekyll.logger.info 'External posts:', "fetching #{src['name']} feed #{src['rss_url']}"
      fetch_feed(src['rss_url'])
    rescue StandardError => e
      Jekyll.logger.warn 'External posts:', "could not read #{src['rss_url']}, trying rss2json. #{e.message}"
      begin
        fetch_via_relay(src['rss_url'])
      rescue StandardError => e
        Jekyll.logger.warn 'External posts:', "rss2json failed too, listing only _data/blog_posts.yml. #{e.message}"
        []
      end
    end

    def fetch_feed(url)
      res = get(url, 'application/rss+xml, application/xml;q=0.9, */*;q=0.8')
      Feedjira.parse(res.body).entries.map do |e|
        normalize(
          'title' => e.title,
          'url' => e.url,
          'date' => e.published,
          'description' => e.summary
        )
      end
    end

    def fetch_via_relay(url)
      res = get(RELAY_URL + URI.encode_www_form_component(url), 'application/json')
      data = JSON.parse(res.body)
      raise "rss2json status #{data['status']}: #{data['message']}" unless data['status'] == 'ok'

      data['items'].map do |item|
        normalize(
          'title' => item['title'],
          'url' => item['link'],
          'date' => item['pubDate'],
          'description' => item['description']
        )
      end
    end

    def get(url, accept)
      res = HTTParty.get(url, timeout: 20, headers: { 'User-Agent' => USER_AGENT, 'Accept' => accept })
      return res if res.code == 200

      raise "HTTP #{res.code} (#{res.headers['content-type']}): #{res.body.to_s[0, 200].gsub(/\s+/, ' ')}"
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
