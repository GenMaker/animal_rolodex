

class Scraper
   BASE_PATH = "https://a-z-animals.com/animals"
   
      def self.scrape_page                  #creates a hash of animal names 
        animal_name=[]
        doc = Nokogiri::HTML(open(BASE_PATH)) 
        
        doc.css("div li").each do |animal|
          animal_name << {name: animal.text, url: animal.css("a").attr("href").value}
        end
        animal_name.shift(12)
        animal_name
      end
  
      # def self.parse_animal_name(selected_animal)
        
      #   parsed_animal_name = ""
      #   if selected_animal.include?(" ")
      #       parsed_animal_name = selected_animal.gsub! /\s+/, '-'                #slug
      #     else
      #       parsed_animal_name = selected_animal
      #   end
      #     @done_animal = parsed_animal_name.downcase
      # end
   
  
    def self.scrape_selected_animal(animal)
      animal_url= "https://a-z-animals.com" + animal.url
      binding.pry
      doc2 = Nokogiri::HTML(open(animal_url))
      animal_noko_data = doc2.css("td") 
      
      animal.kingdom = # value
    end
  
end