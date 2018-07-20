class StitcherTopShows::Show

  attr_accessor :title, :category, :about, :stars, :most_recent_title, :most_recent_url, :most_recent_desc
  #do I want to give items a temporary ID?
  @@all = []
 #  @@categories = [] Do I need this?


  def self.category_list
    @@categories = self.all.collect{|show| show.category}.uniq
  end

  def self.find(stuff)
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
