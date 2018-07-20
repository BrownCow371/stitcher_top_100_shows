class StitcherTopShows::Show

  attr_accessor :title, :category, :about, :stars, :most_recent_title, :most_recent_url, :most_recent_desc

  @@all = []
 #  @@categories = [] Do I need this?

  def self.category_list
    @@categories = self.all.collect{|show| show.category}.uniq
  end

  def self.find(by what?)
  end

  def add_show_attributes(take a hash?)

  end

  def self.all
    @@all
  end

  def self.reset
    self.all.clear
  end

end
