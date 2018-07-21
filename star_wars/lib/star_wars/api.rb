class StarWars::API
  def self.get_categories
    cats = RestClient.get('https://swapi.co/api/')  
    cat_json = JSON.parse(cats)
    StarWars::Category.create_categories_from_api(cat_json)
  end
end