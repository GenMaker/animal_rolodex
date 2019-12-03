require 'nokogiri'
require 'open-uri'
require 'pry'


class AnimalRolodex::CLI
  
  def call
    welcome
    spin
    waiting_is_fun
    list_info
    goodbye
  end
  
  def welcome
    puts "Welcome to your animal rolodex!"
    puts "Let's learn about a new animal today!"
  end 
  
  def spin
    puts "Enter ! to spin your rolodex. Type exit if you are done."
    input = gets.strip
    while input != "exit"
      if input = "!"
        #then new_animal = code to go through site to find an animal
        animals = []
        site = Nokogiri::HTML(open("https://a-z-animals.com/animals/"))
        doc = Nokogiri::HTML(open(site))
        animals = doc.css("ul li")
        
        12.times do 
        things.shift
end
        
        
        
    # puts new_animal
      else 
        puts "Oopps! did you type a ! or exit?  Try again."
      end
    end
  end
  
  def waiting_is_fun
    puts "Wheeeeeee! look at your rolodex spin!"
  end
  
  def list_info
    puts "Your featured animal for today is: ______"
  end
  
  def goodbye
    #-- offer some kind of project that the user can do with the new informatoin--
    puts "Thanks for checking out your animal rolodex."
    puts "Additional project ideas:" 
    puts "1. Draw a picture of your ------featured animal."
    puts "2. Play pretend that you are ------the featured animal."
    puts "3. Tell your Mom or Dad all about your new animal."
    puts "Goodbye!"
  end
  
end