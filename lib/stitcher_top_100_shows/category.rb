class StitcherTopShows::Category

  attr_accessor :url, :name

  #@@all = []
  @@all  = ["All", "Comedy", "Business and Industry", "News and Politics", "Society and Culture"]

  def initialize
  end

  def self.new_from_index(stuff)
  end

  def self.all
    @@all 
  end
  
end
