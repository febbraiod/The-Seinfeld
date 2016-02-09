class EpisodeScraper

  EPISODE_URL = ""

  def scrape

    html = Nokogiri::HTML(open(EPISODE_URL))

  end

end