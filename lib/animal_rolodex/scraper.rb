

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
      
      def self.scrape_animal_text(animal) #scrapes selected animal page
        animal_url= "https://a-z-animals.com" + animal
        doc2 = Nokogiri::HTML(open(animal_url))
        animal_noko_data = doc2.css("p") 
        animal_info = animal_noko_data.text
        animal_info
      end
end