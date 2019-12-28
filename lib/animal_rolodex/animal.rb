
class Animal
  attr_accessor :name, :url,:kingdom, :phylum, :klass, :family, :genus, :scientific_name, :type, :common_name, :other_names, :group, :number_of_species, :location, :habitat, :colour, :skin_type,:size, :weight, :top_speed, :diet, :prey, :preditors, :life_style, :group_behavior, :life_span, :age_of_sexual_maturity, :gestation_period, :average_litter_size, :name_of_young, :age_of_weaning, :conservation_status, :estimated_population_size, :biggest_threat, :most_distinctive_feature, :fun_fact
  @@all = []
  
  def initialize(name, url = nil, kingdom = nil, phylum = nil, klass = nil,family = nil, genus = nil, scientific_name = nil, type = nil, common_name = nil, other_names = nil, group = nil, number_of_species = nil, location = nil, habitat = nil, colour = nil, skin_type = nil, size = nil, weight = nil, top_speed = nil, diet= nil, prey= nil, preditors= nil, life_style= nil, group_behavior= nil, life_span = nil, age_of_sexual_maturity = nil, gestation_period = nil, average_litter_size = nil, name_of_young = nil, age_of_weaning = nil, conservation_status = nil, estimated_population_size = nil, biggest_threat = nil, most_distinctive_feature = nil, fun_fact = nil )
      @name = name
      @url = url
      @kingdom = kingdom
      @phylum = phylum
      @klass = klass
      @family = family
      @genus = genus 
      @scientific_name = scientific_name
      @type = type
      @common_name = common_name
      @other_names = other_names
      @group = group
      @number_of_species = number_of_species
      @location = location
      @habitat = habitat
      @colour = colour
      @skin_type = skin_type
      @size = size
      @weight = weight
      @top_speed = top_speed
      @diet = diet
      @prey = prey
      @preditors = preditors
      @life_style = life_style
      @group_behavior = group_behavior
      @life_span = life_span
      @age_of_sexual_maturity = age_of_sexual_maturity
      @gestation_period = gestation_period 
      @average_litter_size = average_litter_size, 
      @name_of_young = name_of_young
      @age_of_weaning = age_of_weaning
      @conservation_status = conservation_status
      @estimated_population_size = estimated_population_size
      @biggest_threat = biggest_threat
      @most_distinctive_feature =most_distinctive_feature
      @fun_fact = fun_fact
      
      @@all << self    
  end
  
  def self.create_from_list(animal_array)
    animal_array.each do |animal|
      new_animal = Animal.new(animal[:name], animal[:url], animal[:kingdom])     #create animal objects name and url
    end
   
  end
  
   def self.select_animal
    @featured_animal= Animal.all.sample
    puts "Your featured animal for today is: #{@featured_animal.name}"
    @featured_animal
  end
  
  def self.animal_data(data)       #adds data to animals
    Animal.all.each do |i| #iterate through all animals
        case
          when i.name == @featured_animal.name  #when names match
            data.each_with_index do |value,index| #search data array for value=kingdom index= num
              x = 0
              if value[x] == "Kingdom" # when matches kingdom save the data into the object
                p = index + 1
                i.kingdom = data[p]
              elsif 
                value[x] == "Phylum" 
                p = index + 1
                i.phylum = data[p]
              elsif
                value[x] == "Class" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Family" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Genus" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Scienctific Name" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Type"
                p = index + 1 
                i.type = data[p]
              elsif
                value[x] == "Common Name" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Other Names" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Group" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Number of Species" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Location" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Habitat" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Colour" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Skin Type" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Weight" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Top Speed" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Diet" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Prey" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Preditors" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Life Style" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Group Behavior" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Life Span" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Age of Sexual Maturity" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Gestation Period" 
                p = index + 1
                i.klass = data[p]
              elsif
                 value[x] == "Average Litter Size" 
                p = index + 1
                i.klass = data[p]
              elsif
                 value[x] == "Name of Young" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Age of Weaning" 
                p = index + 1
                i.klass = data[p] 
              elsif
                value[x] == "Conservation Status" 
                p = index + 1
                i.klass = data[p]
              elsif
                value[x] == "Estimated Population Size" 
                p = index + 1
                i.klass = data[p]
              elsif
                 value[x] == "Biggest Threat" 
                p = index + 1
                i.klass = data[p]
              elsif
                 value[x] == "Most Distinctive Feature" 
                p = index + 1
                i.klass = data[p]
              elsif
                 value[x] == "Fun Fact" 
                p = index + 1
                i.klass = data[p]
              elsif                     
                puts "none to display"
              end
             
          end
          binding.pry
        end
    end
  end
  
  def self.animal_paragraph
  end
    
  def self.all
    @@all
  end
  
  
end

  
  


  