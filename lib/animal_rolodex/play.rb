require 'open-uri'
#require 'pry'
require 'nokogiri'

class Play
  attr_accessor :input
  
  BASE_PATH = "https://a-z-animals.com/animals/"
  @animal_array =[]
  
  def self.welcome
    puts "Welcome to your animal rolodex! Let's learn about a new animal today!"
    puts "Enter ! to spin your rolodex. Type exit if you are done."
    @input = gets.strip
  end 
  
  def play_again
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
    counter = 0
    if counter <= 5
      if @input == !
        make_animals_list
        select_featured_animal
        display_result
        play_again
        
      else @input == "exit" || @input == "Exit"
        goodbye
      end
    end
  end
  
  #creates an array of animals from the index page   
  def self.make_animals_list
    @animal_array = Scraper.scrape_page(BASE_PATH)  
  end 
  
  #selects a fetured animal
  def self.select_featured_animal()
    @selected_featured_animal = Scraper.select_featured_animal
  end
  
  def self.locate_selected_animal_data
    @info = Scraper.selected_animal_data
  end
  
  def self.display_result
    puts "Your featured animal for today is: #{@selected_featured_animal}"
  end
  
  
end