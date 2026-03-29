require 'nokogiri'
require 'open-uri'

module GoogleScholarHelpers
  def self.number_to_human(n, **opts)
    n = n.to_f
    if n >= 1_000_000_000
      "#{(n / 1_000_000_000.0).round(1)}B"
    elsif n >= 1_000_000
      "#{(n / 1_000_000.0).round(1)}M"
    elsif n >= 1_000
      "#{(n / 1_000.0).round(1)}K"
    else
      n.to_i.to_s
    end
  end
end

module Jekyll
  class GoogleScholarCitationsTag < Liquid::Tag
    Citations = { }

    def initialize(tag_name, params, tokens)
      super
      splitted = params.split(" ").map(&:strip)
      @scholar_id = splitted[0]
      @article_id = splitted[1]
    end

    def render(context)
      article_id = context[@article_id.strip]
      scholar_id = context[@scholar_id.strip]
      article_url = "https://scholar.google.com/citations?view_op=view_citation&hl=en&user=#{scholar_id}&citation_for_view=#{scholar_id}:#{article_id}"

      begin
        if GoogleScholarCitationsTag::Citations[article_id]
          return GoogleScholarCitationsTag::Citations[article_id]
        end

        sleep(rand(1.5..3.5))

        doc = Nokogiri::HTML(URI.open(article_url, "User-Agent" => "Ruby/#{RUBY_VERSION}"))
        citation_count = 0

        description_meta = doc.css('meta[name="description"]')
        og_description_meta = doc.css('meta[property="og:description"]')

        if !description_meta.empty?
          cited_by_text = description_meta[0]['content']
          matches = cited_by_text.match(/Cited by (\d+[,\d]*)/)
          citation_count = matches[1].sub(",", "").to_i if matches
        elsif !og_description_meta.empty?
          cited_by_text = og_description_meta[0]['content']
          matches = cited_by_text.match(/Cited by (\d+[,\d]*)/)
          citation_count = matches[1].sub(",", "").to_i if matches
        end

        citation_count = GoogleScholarHelpers.number_to_human(citation_count)

      rescue Exception => e
        citation_count = "N/A"
        puts "Error fetching citation count for #{article_id}: #{e.class} - #{e.message}"
      end

      GoogleScholarCitationsTag::Citations[article_id] = citation_count
      return "#{citation_count}"
    end
  end
end

Liquid::Template.register_tag('google_scholar_citations', Jekyll::GoogleScholarCitationsTag)
