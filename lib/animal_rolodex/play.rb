class Play
  
  def self.welcome
    puts " _______________________________________________________________________"
    puts "| Welcome to your animal rolodex! Let's learn about a new animal today! |"
    puts "|_______________________________________________________________________|"
  end 
  
  def self.goodbye
    puts " _______________________________________________________________________"
    puts "  Thanks for checking out your animal rolodex. Additional project ideas:" 
    puts "  1. Draw a picture of your #{@star_animal.name}."
    puts "  2. Play pretend that you are a #{@star_animal.name}."
    puts "  3. Tell your Mom or Dad all about the #{@star_animal.name}."
    puts "  Goodbye! Till we spin again!"
    puts " _______________________________________________________________________"
  end
  
  def self.play 
    puts "\n"
    puts "            Enter '!' to spin your rolodex. Type 'exit' if you are done."
    @input = gets.strip
      if @input == "!"
        @star_animal = Animal.select_animal
        learn_more
      elsif @input == "exit" || @input == "Exit"
        goodbye
      else @input != "!" || @input != "exit" || @input !="Exit"
        puts "Opps make sure you type in ! or exit"
        play
      end
    
  end
  
  def self.learn_more
    
    @star_animal.animal_writing
      puts " _______________________________________________________________________"    
      puts "                            Want to learn more? "
      puts "      Enter '1' to introduce your #{@star_animal.name}. "
      puts " "
      puts "      Want to spin again? Enter spin."
      puts "      Enter 'exit' to exit the game."
      puts " _______________________________________________________________________"
      learn_choice = gets.strip
     
        if learn_choice == "1"
            puts "__________________________________________________________"
            puts "Here is some information about the #{@star_animal.name}\n"
            puts @star_animal.text
            puts "\n"
            puts "__________________________________________________________"
            learn_more
          elsif learn_choice == "spin" || learn_choice == "Spin"
            play
          elsif learn_choice == "exit" || learn_choice == "Exit"
            goodbye
          else
            puts "__________________________________________________________"
            puts "Opps, please enter '1','exit', or 'spin'."
            puts "__________________________________________________________"
            learn_more
        end
  end
  
end   



