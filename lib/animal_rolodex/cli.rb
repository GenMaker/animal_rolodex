require_relative "../animal_rolodex/scraper.rb"
require_relative "../animal_rolodex/spin.rb"
require 'colorize'
require 'nokogiri'


class AnimalRolodex::CLI
  BASE_PATH = "https://a-z-animals.com/animals/"
  
   def run (input = @input) # like run
      welcome
      make_animals
      sort_list
      display_result
  end
  
  def welcome
    puts "Welcome to your animal rolodex!"
    puts "Let's learn about a new animal today!"
    puts "Enter ! to spin your rolodex. Type exit if you are done."
    input = gets.strip
  end 
      
  def make_animals 
    
      if input == "!"
        puts "I am scraping for animals now...."
        elsif input == "exit" || "Exit"
          goodbye
        else
          puts "Oopps! did you type a ! or exit?  Try again."
      end
      
        #animals = Scraper.scrape_for_animals (BASE_PATH)
#       if input = "!"
#         code to go through site to find an animal
#         animals = []
#         site = Nokogiri::HTML(open("https://a-z-animals.com/animals/"))
#         doc = Nokogiri::HTML(open(site))
#         animals = doc.css("ul li")
        
#         12.times do 
#         things.shift
  end
  
  def waiting_is_fun
    puts "Wheeeeeee! look at your rolodex spin!"
  end
  
  def list_info
    puts "Your featured animal for today is: ______"
  end
  
  def goodbye
    #-- offer some kind of project that the user can do with the new informatoin--
    puts "Thanks for checking out your animal rolodex. Additional project ideas:" 
    puts "1. Draw a picture of your ------featured animal."
    puts "2. Play pretend that you are ------the featured animal."
    puts "3. Tell your Mom or Dad all about your new animal."
    puts "Goodbye! Till we spin again!"
  end
  
end