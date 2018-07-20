class StitcherTopShows::Category

  attr_accessor :url, :name

  @@all = []
  
  def initialize
  end

  def self.new_from_index(stuff)
  end

  def self.all
    @@all 
  end
  
end
