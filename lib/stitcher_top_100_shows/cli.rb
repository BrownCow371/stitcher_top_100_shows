class StitcherTopShows::CLI

  def call
    puts "Welcome to the weekly ranking of the top 100 most popular podcasts on Stitcher!"
    self.pick_category
  end

  def pick_category
    puts ""
    puts "Which category of shows would you like to see the top 100 for?" 
    puts "    - Please enter the category number from the list"
    self.print_categories
    input = gets.strip.to_i

    # Call Category.all and grab an index and the url
    c = category[input-1]
    puts "Pulling Top 100 list for the #{c} category."

    
    
    # self.print_shows(c.url) - will eventually need a url
    self.print_shows
    self.pick_show
  end

  #def pick_show(url)#might need url argument?
  def pick_show
    puts ""
    puts "Which show would you like more details on?"
    puts "Please Enter the Show List number or 'Back' to return to the Category list."
    puts ""
    input = gets.strip
    if input.downcase == "back"
      self.back_to_category_list
    elsif input.to_i >0 && input.to_i <= StitcherTopShows::Show.all.length
      show = StitcherTopShows::Show.find_by_index(input.to_i)
      print_show_details(show)

      puts ""
      puts "Would you like to see another show?"
      puts "    - Enter Y if you do, "
      puts "    -'Exit' if you are done, or"
      puts "    -'Back' if you would like to got back to the Category List."

      input = gets.strip.downcase

        if input == "y" 
          self.print_show
          self.pick_show
        elsif input == "back"
          self.back_to_category_list
        elsif input == "exit"
          puts ""
          puts "Thank you for using Stitcher Top 100 Shows!"
          puts "Have a great day!"
          exit
        else 
          puts ""
          puts "I don't understand that answer."
          self.pick_show
        end
      else
        puts ""
        puts "I don't understand that answer."
        self.pick_show
    end
  end

  def print_categories
    #hard code some categories here. 
    #should be calling StitcherTopShows::Category.all.each.with_index(1) do |category, index|
    #puts "#{index}.  #{category.name}"
    #end
    puts "---------------------Top Show Categories---------------------"
    puts "1. All" 
    puts "2. Comedy"
    puts "3. Business and Industry"
    puts "4. News and Politics"
    puts "5. Society and Culture"
    puts "-------------------------------------------------------------"
  end

  # def print_shows(category_url)
  def print_shows
    puts ""
    StitcherTopShows::Show.all.each.with_index(1) do |s, i|
      puts "#{i} #{s}"
    end
  end

  def print_show_details(show)
    puts ""
    puts "---------------------Show Details---------------------"
    puts "Title:                     The Show"
    puts "About:                     Stuff about the show"
    puts "Category:                  Comedy"
    puts "Stars:                     4.0"
    puts "Most Recent Episode:       The funny thing about Ruby"
    puts "Most Recent Episode Desc:  A podcast about Ruby"
    puts "Most Recent Episode URL:   somewhere on Stitcher"
    puts "-----------------------------------------------------"

  end

  def back_to_show_list
  end

  def back_to_category_list
    #StitcherTopShows::Show.reset
    self.pick_category
  end
end
