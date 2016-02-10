EpisodeScraper.seed_urls

scraper = EpisodeScraper.new
scraper.scrape

  idx = 0
  EpisodeScraper.episode_titles.each do |title|

    epi = Episode.find_or_create_by(title: title, synopsis: EpisodeScraper.episode_desc[idx])
    epi.save

    idx += 1
  end

jerry = Character.create(name: "Jerry")
Character.create(name: "Elaine")
Character.create(name: "George")
Character.create(name: "Kramer")

quote = Quote.new(content: "Men don't care what's on TV. They only care what else is on TV.", rating: 0)
quote.character = jerry
quote.episode = Episode.find_by(title: "THE FIRE")
quote.save
