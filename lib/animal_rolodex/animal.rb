require_relative "./animal_rolodex/version"
require_relative './animal_rolodex/cli'
require 'open-uri'
require 'pry'
require 'nokogiri'

class Animal
  attr_accessor :name, :origin, :diet, :group, :life_span, :temperment, :distinctive_features
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
end

  
  


  