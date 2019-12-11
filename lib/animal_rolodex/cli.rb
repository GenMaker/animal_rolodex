require_relative "../animal_rolodex/scraper.rb"
require_relative "../animal_rolodex/play.rb"
require 'colorize'
require 'nokogiri'


class AnimalRolodex::CLI
  BASE_PATH = "https://a-z-animals.com/animals/"
  @animal_array =[]
  
  def call 
    Play.welcome
    Play.play
  end
    
  #creates an array of animals from the index page   
  def make_animals_list
    @animal_array = Scraper.scrape_page(BASE_PATH)  
  end 
  
  #selects a fetured animal
  def select_featured_animal()
    @selected_featured_animal = Scraper.select_featured_animal
  end
  
  def locate_selected_animal_data
    @info = Scraper.selected_animal_data
  end
  
  def display_result
    puts "Your featured animal for today is: #{@selected_featured_animal}"
   
  end
  
  def goodbye
    #-- offer some kind of project that the user can do with the new informatoin--
    puts "Thanks for checking out your animal rolodex. Additional project ideas:" 
    puts "1. Draw a picture of your ------featured animal."
    puts "2. Play pretend that you are ------the featured animal."
    puts "3. Tell your Mom or Dad all about your new animal."
    puts "Goodbye! Till we spin again!"
  end
  
end