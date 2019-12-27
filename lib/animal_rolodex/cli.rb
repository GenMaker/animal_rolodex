class CLI
   BASE_PATH = "https://a-z-animals.com/animals/"
   
  def run 
    make_animals
    play
    
    collect_animal_data
    
  end
  
    
      def make_animals
        animal_array = Scraper.scrape_page(BASE_PATH) #creates a hash of animal names 
        Animal.create_from_list(animal_array)         #creates animal objects
      end 
      
      def play
        Play.play
        
        
      end
      
      
  
  
      def collect_animal_data
        Scraper.parse_animal_name(@selected_animal) #reshape animal name for second scraper
        animal_doc = Scraper.scrape_selected_animal(BASE_PATH)   #creates animal_data raw data array
        Animal.animal_data(animal_doc)
      end
      
      
  
  
end