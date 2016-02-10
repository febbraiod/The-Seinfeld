class EpisodeScraper

  @@episode_urls = []
  @@episode_titles = []
  @@episode_desc = []


  def self.seed_urls
    idx = 1
    9.times do
      @@episode_urls << "http://www.seinfeldscripts.com/seinfeld-season-#{idx}.html"
      idx += 1
    end
  end

  def scrape

    @@episode_urls.each do |i|
      html = Nokogiri::HTML(open(i))
      titles = html.css('h3')
      descriptions = html.css('h3 + p')

        titles.each do |title|
          @@episode_titles << title.text.strip
        end

        descriptions.each do |desc|
          @@episode_desc << desc.text.strip
        end
    end
  end

  def self.episode_titles
    @@episode_titles
  end

  def self.episode_desc
    @@episode_desc
  end

end