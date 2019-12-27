require 'open-uri'
require 'pry'
require 'nokogiri'

class Play
  
  
  
  def self.welcome
    puts "Welcome to your animal rolodex! Let's learn about a new animal today!"
    puts "Enter '!' to spin your rolodex. Type 'exit' if you are done."
    @input = gets.strip
  end 
  
  def self.goodbye
    puts "Thanks for checking out your animal rolodex. Additional project ideas:" 
    puts "1. Draw a picture of your #{@selected_featured_animal}."
    puts "2. Play pretend that you are #{@selected_featured_animal}."
    puts "3. Tell your Mom or Dad all about the #{@selected_featured_animal}."
    puts "Goodbye! Till we spin again!"
  end
  
  def self.play 
    welcome
    counter = 0
    if counter <= 2
      if @input == "!"
        counter += 1
        @star_animal = Animal.select_animal
        learn_more
      elsif @input == "exit" || @input == "Exit"
        goodbye
      elsif @input != "!" || @input != "exit" || @input !="Exit"
        puts "Opps make sure you type in ! or exit"
        play
      end
    else
      puts "choose your animal!"
      @choice = gets.strip
      choose_one
    end
  end
  
  def self.learn_more
    puts "Want to learn more about #{@star_animal.name}. Enter Yes." 
    puts "Want to spin again? Enter spin."
    learn_choice = gets.strip
    if learn_choice == "Yes" || learn_choice == "yes"
      puts "learning more about #{@star_animal.name}"
      Scraper.scrape_selected_animal(@star_animal)
      puts "Kingdom: #{@star_animal.kingdom}"
      puts "Phylum: #{@star_animal.phylum}"
      puts "Class: #{@star_animal.klass}"
      play
    else
      play
    end
  end
  
end