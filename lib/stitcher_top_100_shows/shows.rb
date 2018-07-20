class StitcherTopShows::Show

  attr_accessor :title, :category, :about, :stars, :most_recent_title, :most_recent_url, :most_recent_desc
  #do I want to give items a temporary ID?
  @@all = []
 #  @@categories = [] Do I need this?


  def self.category_list
    @@categories = self.all.collect{|show| show.category}.uniq
  end

  def self.find(by what?)
  end

  def self.all
    @@all
  end

  def self.reset
    self.all.clear
  end

  def self.new_from_somewhere(what goes here)
  end

  def initialize(do I need stuff here)
  end


  def add_show_attributes(take a hash?)
  end



end
