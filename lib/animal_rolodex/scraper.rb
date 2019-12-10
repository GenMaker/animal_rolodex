class Scraper
  
  def self.scrape_page(site_url)
    @animals = []
    doc = Nokogiri::HTML(open(site_url))
    
    @animals = doc.css("ul li")

    12.times do 
    @animals.shift
    end
    
    #puts @animals # creates an array of animals
  end
  
  def select_featured_animal(passed_in_array)
    @list = []
    passed_in_array.each do |animal|
      list << animal.text
      end
      puts list
    
    # selected = list.sample
    # puts " Your selected animal is: "
    # puts selected
  end
  
  
  
  
  
  
end