
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
  
   def self.select_animal
    featured_animal= Animal.all.sample
    puts "Your featured animal for today is: #{featured_animal.name}"
    featured_animal.name
  end
  
  def self.animal_data(data)       #creates hash of all data from selected animal
      info = []
      data.each do |i|
        info << i.text
      end
     
      collected = []
      index_count = 0
      
      info.each_index.select do |x|
        case
          when info[x]== "Kingdom:Five groups that classify all living things"
            i = x+1
            collected << info[x]
            collected << info[i]
             
          when info[x]== "Phylum:A group of animals within the animal kingdom"
            i = x+1
            collected << info[x]
            collected << info[i] 
            
            
          when info[x]== "Class:A group of animals within a pylum"
            i = x+1
            collected << info[x]
            collected << info[i] 
            
          when info[x]== "Order:A group of animals within a class"
            i = x+1
            collected << info[x]
            collected << info[i]  
          
          when info[x]== "Family:A group of animals within an order"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Genus:A group of animals within a family"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Scientific Name:The name of the animal in science"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Common Name:Most widely used name for this species"
            i = x+1
            collected << info[x]
            collected << info[i] 
            
          when info[x]== "Other Name(s):Different names for this animal"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Group:The domestic group such as cat or dog"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Number Of Species:The total number of recorded species"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Location:The place where something is found"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
      
          when info[x]== "Type:The animal group that the species belongs to"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Diet:What kind of foods the animal eats"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Size (L):How long (L) or tall (H) the animal is"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Wingspan:The measurement from one wing tip to the other"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Top Speed:The fastest recorded speed of the animal"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Lifespan:How long the animal lives for"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Conservation Status:The likelihood of the animal becoming extinct"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Colour:The colour of the animal's coat or markings"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Skin Type:The protective layer of the animal"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Favourite Food:The preferred food of this animal"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Habitat:The specific area where the animal lives"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Average Clutch Size"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Main Prey:The food that the animal gains energy from"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Predators:Other animals that hunt and eat the animal"
            i = x+1
            collected << info[x]
            collected << info[i]       
      
          when info[x]== "Distinctive Features:Characteristics unique to this animal"
            i = x+1
            collected << info[x]
            collected << info[i]        
      
          when info[x]== "Weight:The measurement of how heavy the animal is"
            i = x+1
            collected << info[x]
            collected << info[i]        
      
          when info[x]== "Prey:The food that the animal gains energy from"
            i = x+1
            collected << info[x]
            collected << info[i]        
      
          when info[x]== "Lifestyle:Whether the animal is solitary or sociable"
            i = x+1
            collected << info[x]
            collected << info[i]        
      
          when info[x]== "Group Behaviour:How the animal behaves in a group"
            i = x+1
            collected << info[x]
            collected << info[i]         
      
          when info[x]== "Age Of Sexual Maturity:When the animal can produce offspring"
            i = x+1
            collected << info[x]
            collected << info[i]   
      
          when info[x]== "Gestation Period:The time from conception to birth"
            i = x+1
            collected << info[x]
            collected << info[i]  
      
          when info[x]== "Average Litter Size:The average number of babies born at once"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
          when info[x]== "Name Of Young:The name given to the offspring"
            i = x+1
            collected << info[x]
            collected << info[i]   
      
          when info[x]== "Biggest Threat:The largest danger to this animal"
            i = x+1
            collected << info[x]
            collected << info[i] 
      
           end 
          end
        
        animal_data= Hash[*collected]
        animal_data
        binding.pry
  end
  
  def collect_animal_data
        Scraper.parse_animal_name(@selected_animal) #reshape animal name for second scraper
        animal_doc = Scraper.scrape_selected_animal(BASE_PATH)   #creates animal_data raw data array
        Animal.animal_data(animal_doc)
      end
      
  def self.display_data(animal_data)
    #selected animal and then display it.
    self.animal_data(@@data) 
    binding.pry
    
  end

    
  def self.all
    @@all
  end
  
  
end

  
  


  