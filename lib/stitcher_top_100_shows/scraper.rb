class StitcherTopShows::Scraper

#URLS by category - do I need a category class?? Maybe...

# all                   =>https://www.stitcher.com/stitcher-list/all-podcasts-top-shows
# comedy                => https://www.stitcher.com/stitcher-list/comedy-podcasts-top-shows
# business and industry => https://www.stitcher.com/stitcher-list/business-and-industry-podcasts-top-shows
# news and politics     => https://www.stitcher.com/stitcher-list/news-and-politics-podcasts-top-shows
# society and culture   => https://www.stitcher.com/stitcher-list/society-and-culture-podcasts-top-shows
# education             => https://www.stitcher.com/stitcher-list/education-podcasts-top-shows
# entertainment         => https://www.stitcher.com/stitcher-list/entertainment-podcasts-top-shows
# games and hobbies     => https://www.stitcher.com/stitcher-list/games-and-hobbies-podcasts-top-shows
# etc.
  def get_page_categories
    Nokogiri::HTML(open("https://www.stitcher.com/stitcher-list/"))
  end

  def scrape_categories_index
    self.get_page_categories.css("some stuff")
  end

  def make_categories
    self.scrape_categories_index.each do |c|
      StitcherTopShows::Category.new_from_index(c)
    end
  end

  def get_page_shows(category_url)
    Nokogiri::HTML(open("https://www.stitcher.com/#{category_url}"))
  end

  def scrape_shows_index(category)
    self.get_page_shows(category).css("some stuff")
  end

  def make_shows(category)
    scrape_shows_index(category).each do |s|
      StitcherTopShows::Show.new_from_index(s)
    end
  end
end
