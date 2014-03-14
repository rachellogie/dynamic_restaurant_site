require 'spec_helper'

require 'menu'

describe Menu do

  it "Knows the array of item objects" do
    menu = Menu.new

    actual = [
              Item.new("Channa Masala", 5.95, "Yummy Goodness", "food1.jpg"),
              Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food1.jpg"),
              ]

    expected = menu.items

    expect(actual).to eq expected
  end

end