class CLI
   BASE_PATH = "https://a-z-animals.com/animals/"
   
  def run 
    make_animals
    
    play
    
    
  end
  
    
      def make_animals
        animal_array = Scraper.scrape_page(BASE_PATH) #creates a hash of animal names 
        Animal.create_from_list(animal_array)         #creates animal objects
      end 
      
      def play
        Play.play
      end
      
      
  
  
      
      
      
  
  
end