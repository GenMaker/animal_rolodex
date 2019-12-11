require 'open-uri'
require 'pry'
require 'nokogiri'

class Play
  attr_accessor :input
  
  def self.welcome
    puts "Welcome to your animal rolodex! Let's learn about a new animal today!"
    puts "Enter ! to spin your rolodex. Type exit if you are done."
    @input = gets.strip
  end 
  
  def play_again
    puts "Enter ! to spin your rolodex. Type exit if you are done."
    @input = gets.strip
  end
  
  def self.goodbye
    #-- offer some kind of project that the user can do with the new informatoin--
    puts "Thanks for checking out your animal rolodex. Additional project ideas:" 
    puts "1. Draw a picture of your ------featured animal."
    puts "2. Play pretend that you are ------the featured animal."
    puts "3. Tell your Mom or Dad all about your new animal."
    puts "Goodbye! Till we spin again!"
  end
  
  def self.play 
    counter = 0
    while counter <= 5
      if @input == !
        counter += 1
        make_animals_list
        select_featured_animal
        display_result
        play_again
      else @input == "exit" || @input == "Exit"
        goodbye
      end
    end
  end
  
  
  
end