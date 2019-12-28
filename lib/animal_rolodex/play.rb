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
    puts "2. Play pretend that you are a #{@star_animal.name}."
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
    puts "Want to learn more about #{@star_animal.name}.? Enter Yes." 
    puts "Want to spin again? Enter spin."
    learn_choice = gets.strip
    if learn_choice == "Yes" || learn_choice == "yes"
      puts "Here is some information about #{@star_animal.name}\n"
      information = Animal.animal_writing(@star_animal)
      puts information
      puts "\n"
      play
    elsif
      learn_choice == "spin"
      play
    else
      puts "Opps, please enter 'yes' or 'spin'."
      learn_more
    end
  end
  
end