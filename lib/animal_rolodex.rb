require_relative "./animal_rolodex/version"
require_relative './animal_rolodex/cli'


#class Play 
  #attr_accessor :input
  
  
def welcome
    puts "Welcome to your animal rolodex!"
    puts "Let's learn about a new animal today!"
    puts "Enter ! to spin your rolodex. Type exit if you are done."
    input = gets.strip
  end 
#end
  