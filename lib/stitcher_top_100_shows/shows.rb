class StitcherTopShows::Show

  attr_accessor :title, :category, :about, :stars, :most_recent_title, :most_recent_url, :most_recent_desc

  #@@all = []
  @@all = ["Show 1", "Show 2", "Show 3"]


  def self.category_list
    @@categories = self.all.collect{|show| show.category}.uniq
  end

  def self.find_by_index(list_number)
    self.all[list_number-1]
  end

  def self.all
    @@all
  end

  def self.reset
    self.all.clear
  end

  def self.new_from_somewhere(stuff)
  end

  def initialize(stuff)
  end


  def add_show_attributes(stuff)
  end



end
