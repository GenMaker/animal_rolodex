class CLI
  def run 
    Play.welcome
    make_animals
    play
    cli_additional_code_review_challenge
  end

      def make_animals
        animal_array = Scraper.scrape_page      #creates an array of animal hashes names 
        Animal.create_from_list(animal_array)   #creates animal objects
      end 
      
      def cli_additional_code_review_challenge
        count = 0
          Animal.all.each do |animal| 
            puts "#{count}. #{animal.name}"
            count += 1 
          end
      end
      
      def play
        Play.play
      end
  
end