

class Scraper
   
   
      def self.scrape_page(site_url)                  #creates a hash of animal names 
        animal_name=[]
        doc = Nokogiri::HTML(open(site_url)) 
        
        doc.css("div li b").each do |animal|
          animal_name << {name: animal.text}
        end
        animal_name.shift()
        animal_name
      end
  
      def self.parse_animal_name(selected_animal)
        parsed_animal_name = ""
        if selected_animal.include?(" ")
            parsed_animal_name = selected_animal.gsub! /\s+/, '-'                #slug
          else
            parsed_animal_name = selected_animal
        end
          @done_animal = parsed_animal_name.downcase
      end
   
  
  def self.scrape_selected_animal(site_url)
    animal = @done_animal.to_s + "/"
    animal_url= site_url + animal
    
    doc2= Nokogiri::HTML(open(site_url))
    animal = doc2.css("div li b").each do |a|
      animal << a.text
      end
    animal.shift()
    animal
  end
      #   def self.scrape_page(site_url)                
      #   animal_name=[]
      #   doc = Nokogiri::HTML(open(site_url)) 
        
      #   doc.css("div li b").each do |animal|
      #     animal_name << {name: animal.text}
      #   end
      #   animal_name.shift()
      #   animal_name
      # end
  

  
end