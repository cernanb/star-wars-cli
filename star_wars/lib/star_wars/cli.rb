class StarWars::CLI
  def start
    puts "Welcome to the Star Wars CLI!!!"
    StarWars::API.get_categories
    menu
  end 
  
  def menu
    puts "Select a category to view the top 10 items in that list!"
    @categories = StarWars::Category.all 
    @categories.each.with_index(1) do |cat, index|
      puts "#{index}. #{cat.name.capitalize}"
    end 
  end 
end