require 'open-uri'
#require 'pry'
require 'nokogiri'

class Scraper
  
  def self.scrape_page(site_url)
    @animals = []
    @animal_list= []
    doc = Nokogiri::HTML(open(site_url))
    list = doc.css("div li b").each do |animal|
    @animal_list << animal.text
    end
    @animal_list.shift()
    #puts @animal_list
  end

  def self.select_featured_animal
    @animal_list.sample
  end
  
end