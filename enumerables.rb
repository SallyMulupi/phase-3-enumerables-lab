require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  ]
end

#takes an array of spicy_foods and returns an array of strings with the names of each spicy food.
def get_names(spicy_foods)
  food_name =spicy_food.map{|b| b[:name]}
  return food_name
end
# array of spicy_foods and returns an array of hashes where the heat level of the food is greater than 5.

def spiciest_food(picy_foods)
  level = spicy_foods.select{|b| b[:heat_level] >= 5}

  return level
end


#takes an array of spicy_foods and output to the terminal in the format #puts:Buffallo wings (American)|heat level
def print_spicy_foods(spicy_foods)
  return spicy_foods.each {|b| puts "#{b[:name]} (#{b[:cuisine]}) | Heat Level: #{'🌶' * b[:heat_level]}"}
end




def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  selected = spicy_foods.each{|b| puts 
  if b[:cuisine] == cuisine
  return b
end
}
end
 get_spicy_food_by_cuisine(spicy_foods, "American")




 def sort_by_heat(spicy_foods)
  sorted = spicy_foods.sort{|b1, b2| b1[:heat_level] <=> b2[:heat_level]}
  return sorted
end



def print_spiciest_foods(spicy_foods)
  levels = spicy_foods.filter{|b| b[:heat_level] > 5 }
  return levels.each {|b| puts "#{b[:name]} (#{b[:cuisine]}) | Heat Level: #{'🌶' * b[:heat_level]}"}
end




def average_heat_level(spicy_foods)
  total_level = spicy_foods.sum{|b| b[:heat_level]}

  return total_level/spicy_foods.size
end