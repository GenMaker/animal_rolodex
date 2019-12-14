require_relative "./animal_rolodex/version"
require_relative './animal_rolodex/cli'

class Animal
  attr_accessor :name, :origin, :diet, :group, :life_span, :temperment, :distinctive_features
  @@all = []
  
  def initialize
    @name = name
  end
  
  
end

  
  


  