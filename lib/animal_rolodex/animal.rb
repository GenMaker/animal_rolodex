# require_relative "./animal_rolodex/version"
# require_relative './animal_rolodex/cli'
# require 'open-uri'
# require 'pry'
# require 'nokogiri'

class Animal
  attr_accessor :name, :kingdom, :phylum, :class, :family, :genus, :scientific_name, :common_name, :other_names, :group, :number_of_species, :location, :habitat, :colour, :skin_type, :size, :weight, :top_speed, :diet, :prey, :preditors, :life_style, :group_behavior, :life_span, :age_of_sexual_maturity, :gestation_period, :average_litter_size, :name_of_young, :age_of_weaning, :conservation_status, :estimated_population_size, :biggest_treat, :most_distinctive_feature, :fun_fact
  @@all = []
  
  def initialize(animal_hash)
    animal_hash.each do |key, value|
      if key == :name
        @name = value
      end
    end
    @@all << self    #initializes the animal hash into objects
  end
  
  def self.create_from_list(animal_array)
      animal_array.each do |animal|
      new_animal = Animal.new(animal)     #create animal objects with name
    end
  end
  
  def self.add_animail_attributes(attributes_hash)
    attributes_hash.each do |key, value|
      if key == origin
        @origin = value
      elsif key == diet
        @diet = value
      elsif key == group
        @group = value
      elsif key == life_span
        @life_span = value
      elsif key == temperment
        @temperment = value
      elsif key == distinctive_features
        @distinctive_features = value
      end
    end
  end
  
  def self.all
    @@all
  end
end

  
  


  