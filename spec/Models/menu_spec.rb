require 'spec_helper'

require 'menu'

require 'item'

describe Menu do

  it "Knows the array of item objects" do
    menu = Menu.new

    actual = [
              Item.new("Channa Masala", 5.95, "Yummy Goodness", "food1.jpg"),
              Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food2.jpg"),
              Item.new("Saag Paneer", 5.95, "Yummy Goodness", "food3.jpg"),
              Item.new("Alu Gobi", 5.95, "Yummy goodness", "food4.jpg"),
              ]

    expected = menu.items

    expect(actual).to eq expected
  end



end

