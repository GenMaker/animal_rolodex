require_relative "../animal_rolodex/scraper.rb"
require_relative "../animal_rolodex/play.rb"
require 'colorize'
require 'nokogiri'


class AnimalRolodex::CLI
  
  def call 
    Play.play
  end
  
end