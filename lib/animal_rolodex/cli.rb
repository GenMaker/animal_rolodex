require_relative "../animal_rolodex/scraper.rb"
require_relative "../animal_rolodex/play.rb"
require 'pry'
require 'nokogiri'


  class CLI
   BASE_PATH = "https://a-z-animals.com/animals/"
   
  def run 
    make_animals_list
    select_featured_animal
    Scraper.parse_animal_name
    #add_attributes_to_animal
    #learn_more
  end
  
  #creates an array of animals from the index page   
  def make_animals_list
    @animal_array = Scraper.scrape_page(BASE_PATH) 
  end 
  
  #selects a fetured animal
  def select_featured_animal
    @featured_animal = @animal_array.sample
    puts "Your featured animal for today is: #{@featured_animal}"
  end
  
  #calls scraper to create featured animal data array
  def add_attributes_to_animal
    
    data = Scraper.scrape_selected_animal(BASE_PATH + @featured_animal + '/')
   
  end
  
  
  #
  def learn_more
    puts "Let's learn more about your #{@featured_animal}."
    
  end
  
end