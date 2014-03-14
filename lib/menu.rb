require "item"

require "csv"

class Menu

  def items

    array = []

    #need to create an item object out of every line and return an array of item objects

    CSV.foreach(File.expand_path('../dynamic_restaurant_site_original/config/menu.csv')) do |row|
      one,two,three,four = row
      array << Item.new(one, two, three, four)
    end

    return array[1..-1]

    #[
    #  Item.new("Channa Masala", 5.95, "Yummy Goodness", "food1.jpg"),
    #  Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food1.jpg"),
    #]
  end
end