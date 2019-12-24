
class Animal
  attr_accessor :name, :kingdom, :phylum, :class, :family, :genus, :scientific_name, :common_name, :other_names, :group, :number_of_species, :location, :habitat, :colour, :skin_type, :size, :weight, :top_speed, :diet, :prey, :preditors, :life_style, :group_behavior, :life_span, :age_of_sexual_maturity, :gestation_period, :average_litter_size, :name_of_young, :age_of_weaning, :conservation_status, :estimated_population_size, :biggest_treat, :most_distinctive_feature, :fun_fact
  @@all = []
  
  def initialize(animal_hash)
      animal_hash.each do |key, value|
        key == :name
          @name = value
         key == :kingdom
          @kingdom = ""
         key == :location
          @location= ""
         key == :diet
          @diet = ""
         key == :fun_fact
          @diet = ""
      end
    @@all << self    #initializes all animals hash into object with kingdom, location, diet , most_distinctive_feature, fun_fact
  end
  
  def self.create_from_list(animal_array)
      animal_array.each do |animal|
      new_animal = Animal.new(animal)     #create animal objects with name
    end
  end
  
  def self.animal_data(animal_data)       #creates an array of all facts about selected animal
      @collected = []
      animal_data.each do |i|
        @collected << i.text
      end
      @collected.shift(4)
      @collected  
  end
  
  def self.add_data
    
  end
    
  def self.all
    @@all
  end
  
  
end

  
  


  