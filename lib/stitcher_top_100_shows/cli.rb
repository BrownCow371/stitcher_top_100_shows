class StitcherTopShows::CLI

  def call
    puts "Welcome to the weekly ranking of the top 100 most popular podcast shows on Stitcher!"
    self.pick_category
  end

  def pick_category
    puts ""
    puts "Which category of shows would you like to see the top 100 for? Enter the category list number."
    self.print_categories
    input = gets.strip.to_i

    #category = 
    #they pick a category...now what? - need to call shows for that category
    #self.pick_show
  end

  def pick_show(url)#might need url argument?
    puts 
  end

  def print_categories
    #hard code some categories here. 
    #should be calling StitcherTopShows::Category.all.each.with_index(1) do |category, index|
    #puts "#{index}.  #{category.name}"
    #end
    puts "----------------------------------"
    puts "1. All" 
    puts "2. Comedy"
    puts "3. Business and Industry"
    puts "4. News and Politics"
    puts "5. Society and Culture"
  end

  def print_shows(range)
  end

  def print_show_details(show)
  end

  def back_to_show_list
    
  end

  def back_to_category_list
    StitcherTopShows::Show.reset
    self.pick_category
  end
end
