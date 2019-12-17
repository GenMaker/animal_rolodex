require_relative "./animal_rolodex/version"
require_relative './animal_rolodex/cli'
require 'open-uri'
require 'pry'
require 'nokogiri'

class Animal
  attr_accessor :name, :origin, :diet, :group, :life_span, :temperment, :distinctive_features
  @@all = []
  
  def initialize
    @name = name
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

  
  


  