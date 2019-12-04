require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  
  def self.scrape_page(site_url)
    animals = []
    doc = Nokogiri::HTML(open(site_url))
    
    doc.css("ul li")
    12.times do 
      doc.shift
    end

    things.each do |animal|
    puts animal.text
    end 
end
  end
  
  
  
end