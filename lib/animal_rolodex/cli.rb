class CLI
   BASE_PATH = "https://a-z-animals.com/animals/"
   
  def run 
    make_animals
    select_featured_animal
    Scraper.parse_animal_name(@selected_animal)
    Scraper.scrape_selected_animal(BASE_PATH)
    #add_attributes_to_animal # this method calls parse inside it
    #learn_more
  end
  
    
      def make_animals
        animal_array = Scraper.scrape_page(BASE_PATH) #creates a hash of animal names 
        Animal.create_from_list(animal_array)         #creates animal objects
      end 
  
      def select_featured_animal                      #selects a featured animal
        @selected_animal= Play.select_animal
      end
  
      def parse_animal_name                         #reshape animal name for second scraper
        Scraper.parse_animal_name(@selected_animal)
      end
  
  
  
  def add_attributes_to_animal
          
    # name = Scraper.parse_animal_name(@featured_animal)
    
    # name_to_s = name.to_s.downcase
  
    Scraper.scrape_selected_animal(BASE_PATH)
   

  end
  
  # def learn_more
  
  #   puts "Let's learn more about your #{@featured_animal}."
    
  # end
  
end