class Animal
  attr_accessor :name, :url, :text
  @@all = []
  
  def initialize(name, url = nil, text = nil)
      @name = name
      @url = url
      @text = text
      @@all << self    
  end
  
  def self.create_from_list(animal_array) #create animal objects name and url and text
    animal_array.each do |animal|
      new_animal = Animal.new(animal[:name], animal[:url], animal[:text])     
    end
   
  end
  
  def self.select_animal
    @featured_animal= Animal.all.sample
    puts "Your featured animal for today is: #{@featured_animal.name}"
    @featured_animal
  end
  
  def animal_writing
      @text = Scraper.scrape_animal_text(@url)
  end

  def self.all
    @@all
  end

end