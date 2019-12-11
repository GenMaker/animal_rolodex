require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  
  def self.scrape_page(site_url)
    @animals = []
    doc = Nokogiri::HTML(open(site_url))
    animal_list= []
    list = doc.css("div li b").each do |animal|
    animal_list << animal.text
  
    end
    binding.pry
    puts animal_list
    
  end
  #@all_list = doc.search('value').map{ |s| s.text.strip }
  def self.select_featured_animal(passed_in_array)
    @list = []
    
    # passed_in_array.each do |animal|
    #   list << animal
    #   end
    #   puts list
    
    # selected = list.sample
    # puts " Your selected animal is: "
    # puts selected
  end
  
  
  
  
  
  
end