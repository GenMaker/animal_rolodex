class CLI
   BASE_PATH = "https://a-z-animals.com/animals/"
   
  def run 
    Play.welcome
    make_animals
    #collect_animal_info
    play
  end
  
    
      def make_animals
        animal_array = Scraper.scrape_page #creates a hash of animal names 
        Animal.create_from_list(animal_array)         #creates animal objects
      end 
      
      def collect_animal_info
        Animal.select_animal
        
      end
      
      def play
        Play.play
      end
      
      
  
  
      
      
      
  
  
end