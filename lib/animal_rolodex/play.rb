require 'open-uri'
require 'pry'
require 'nokogiri'

class Play
  
  def self.welcome
    puts "Welcome to your animal rolodex! Let's learn about a new animal today!"
  end 
  
  def self.goodbye
    puts "Thanks for checking out your animal rolodex. Additional project ideas:" 
    puts "1. Draw a picture of your #{@star_animal.name}."
    puts "2. Play pretend that you are #{@star_animal.name}."
    puts "3. Tell your Mom or Dad all about the #{@star_animal.name}."
    puts "Goodbye! Till we spin again!"
  end
  
  def self.play 
    puts "Enter '!' to spin your rolodex. Type 'exit' if you are done."
    @input = gets.strip
    counter = 0
    if counter <= 2
      if @input == "!"
        counter += 1
        @star_animal = Animal.select_animal
        learn_more
      elsif @input == "exit" || @input == "Exit"
        goodbye
      else @input != "!" || @input != "exit" || @input !="Exit"
        puts "Opps make sure you type in ! or exit"
        play
      end
    end
  end
  
  def self.learn_more
    puts "Want to learn more about #{@star_animal.name}. Enter Yes." 
    puts "Want to spin again? Enter spin."
    learn_choice = gets.strip
    if learn_choice == "Yes" || learn_choice == "yes"
      puts "Here is some information about #{@star_animal.name}"
      information = Scraper.scrape_animal_text(@star_animal)
      puts information
      play
      #Scraper.scrape_selected_animal(@star_animal)
      # puts "Kingdom: #{@star_animal.kingdom}"
      # puts "Phylum: #{@star_animal.phylum}"
      # puts "Class: #{@star_animal.klass}"
      # puts "Family: #{@star_animal.family}"
      # puts "Genus: #{@star_animal.genus}"
      # puts "Scientific Name: #{@star_animal.scientific_name}"
      # puts "Common Name: #{@star_animal.common_name}"
      # puts "Other Names: #{@star_animal.other_names}"
      # puts "Group: #{@star_animal.group}"
      # puts "Number of Species: #{@star_animal.number_of_species}"
      # puts "Location: #{@star_animal.location}"
      # puts "Habitat: #{@star_animal.habitat}"
      # puts "Colour: #{@star_animal.colour}"
      # puts "Skin_type: #{@star_animal.skin_type}"
      # puts "Size: #{@star_animal.size}"
      # puts "Weight: #{@star_animal.weight}"
      # puts "Top Speed: #{@star_animal.top_speed}"
      # puts "Diet: #{@star_animal.diet}"
      # puts "Prey: #{@star_animal.prey}"
      # puts "Preditors: #{@star_animal.preditors}"
      # puts "Life Style: #{@star_animal.life_style}"
      # puts "Group Behavior: #{@star_animal.group_behavior}"
      # puts "Life Span: #{@star_animal.life_span}"
      # puts "Age of Maturity: #{@star_animal.age_of_sexual_maturity}"
      # puts "Gestation Period: #{@star_animal.gestation_period}"
      # puts "Average Litter Size: #{@star_animal.average_litter_size}"
      # puts "Name of Young: #{@star_animal.name_of_young}"
      # puts "Age of Weaning: #{@star_animal.age_of_weaning}"
      # puts "Conservation Status: #{@star_animal.conservation_status}"
      # puts "Estimated Population: #{@star_animal.estimated_population_size}"
      # puts "Biggest Threat: #{@star_animal.biggest_threat}"
      # puts "Most Distinctive Feature: #{@star_animal.most_distinctive_feature}"
      # puts "Fun Fact: #{@star_animal.fun_fact}"
      # play
    else
      play
    end
  end
  
end