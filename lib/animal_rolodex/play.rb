require 'open-uri'
require 'pry'
require 'nokogiri'

class Play
  attr_accessor :input
  
  BASE_PATH = "https://a-z-animals.com/animals/"
  #ANIMAL_DATA = "BASE_PATH+#{select_featured_animal}/"
  @animal_array =[]
  @counter = 0
  
  def self.welcome
    puts "Welcome to your animal rolodex! Let's learn about a new animal today!"
    puts "Enter ! to spin your rolodex. Type exit if you are done."
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
    if @counter <= 2
      if @input == "!"
        @counter += 1
        make_animals_list
        select_featured_animal
        display_result
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
  
  def self.choose_one
    case @choice
    when "1"
      puts "choose 1"
    when "2"
      puts "choose 2"
    when "3"
      puts "choose 3"
    end
  end
  
 
  
  
  def self.locate_selected_animal_data
    @info = Scraper.scrape_selected_animal_data(ANIMAL_DATA)
  end
  
  def self.display_result
    puts "Your featured animal for today is: #{@selected_featured_animal}."
    learn_more
  end
  
  def self.learn_more
    puts "Want to learn more about #{@selected_featured_animal}. Enter Yes." 
    puts "Want to spin again? Enter spin."
    learn_choice = gets.strip
    if learn_choice == "Y" || learn_choice == "y"
      locate_selected_animal_data
    else
      play
    end
  end
  
end