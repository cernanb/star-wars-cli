class StarWars::Category
  attr_accessor :url, :name 
  @@all = []
  
  def initialize(name, url) 
    self.name = name
    self.url = url
  end
  
  def self.create_categories_from_api(cat_hash)
    cat_hash.each do |name, url|
      cat_obj = self.new(name, url)
      cat_obj.save
    end
  end 
  
  def self.all
    @@all 
  end 
  
  def save
    self.class.all << self  
  end
end