class CLI
   BASE_PATH = "https://a-z-animals.com/animals/"
   
  def run 
    make_animals
    select_featured_animal
    collect_animal_data
  end
  
    
      def make_animals
        animal_array = Scraper.scrape_page(BASE_PATH) #creates a hash of animal names 
        Animal.create_from_list(animal_array)         #creates animal objects
      end 
  
      def select_featured_animal                      #selects a featured animal
        @selected_animal= Play.select_animal
      end
  
  
      def collect_animal_data
        Scraper.parse_animal_name(@selected_animal) #reshape animal name for second scraper
        data = Scraper.scrape_selected_animal(BASE_PATH)   #creates animal_data raw data array
        Animal.animal_data(data)
        
      end
  
  
  
end