

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
      
      def self.scrape_animal_text(animal)
        animal_url= "https://a-z-animals.com" + animal.url
        doc2 = Nokogiri::HTML(open(animal_url))
        animal_noko_data = doc2.css("p") 
        animal_info = animal_noko_data.text
      end
  
      # the following code is built to display the fast facts
     def self.scrape_selected_animal(animal)
        animal_url= "https://a-z-animals.com" + animal.url
        doc2 = Nokogiri::HTML(open(animal_url))
        animal_noko_data = doc2.css("td") 
          info = []
          animal_noko_data.each do |i|
          info << i.text
          end
          split_data =[]
          info.shift(4)
            info.each do |i|
              split_data << i.split(":")
            end
            split_data
        Animal.animal_data(split_data)
      end
  
end