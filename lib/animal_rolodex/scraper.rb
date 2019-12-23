require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
   
   #creates a list of animals
  def self.scrape_page(site_url)
    @animal_name=[]
    doc = Nokogiri::HTML(open(site_url))
    doc.css("div li b").each do |a|
      @animal_name << a.text
    end
    @animal_name.shift()
    @animal_name
  end
   
   #takes a webpage for a specific animal and scrapes all fast facts into an array
  def self.scrape_selected_animal(animal_url)
    animal = []
    doc2= Nokogiri::HTML(open(animal_url))
    animal = doc2.css("div li b").each do |a|
      animal << a.text
      end
    animal.shift()
    animal
  end
  
  def self.parse_animal_name(name)
    parsed_animal_name = ""
    if name.strip == name and name.include?(" ")
        dashed = name.gsub! /\s+/, '-' #slug
        parsed_animal_name = dashed
    else 
        parsed_animal_name = name
    end
      parsed_animal_name
  end
  

  
end