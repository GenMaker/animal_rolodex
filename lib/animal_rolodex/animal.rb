
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
      info = []
      animal_data.each do |i|
        info << i.text
      end
      binding.pry
      animal= {}
      info.each do |i|
        animal = {
          kingdom:info[5],
          phylum:info[7],
          klass:info[9],
          order:info[11],
          family:info[13],
          genus:info[15],
          scientific_name:info[17],
          common_name:info[19],
          other_name:info[21],
          group:info[24],
          number_of_species:info[26],
          location:info[28],
          habitat:info[30],
          color:info[33],
          skin_type:info[35],
          size:info[37],
          wieght:info[39],
          top_speed:info[41],
          diet:info[44],
          prey:info[46],
          preditors:info[48],
          life_style:info[51],
          group_behavior:info[53],
          life_span:info[56],
          maturity:info[58],
          gestation:info[60],
          litter:info[62],
          young:info[64],
          weaning:info[66],
          conservation_status:info[69],
          estimated_population:info[71],
          biggest_threat:info[73],
          distinctive_feature:info[76],
          fun_fact:info[78]
        }
      end
        binding.pry

  end
  
  def self.add_data
    
  end
    
  def self.all
    @@all
  end
  
  
end

  
  


  