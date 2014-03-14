require "item"

require "csv"

class Menu

  def initialize
    @array = []

    CSV.foreach(File.expand_path('../dynamic_restaurant_site_original/config/menu.csv')) do |row|
      one,two,three,four = row
      @array << Item.new(one, two, three, four)
    end

    @array = @array[1..-1]

  end


  def items
    @array
  end


end