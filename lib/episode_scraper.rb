class EpisodeScraper

  EPISODE_URL = "http://seinfeld.wikia.com/wiki/List_of_Seinfeld_episodes"

  def scrape

    html = Nokogiri::HTML(open(EPISODE_URL))

  end

end