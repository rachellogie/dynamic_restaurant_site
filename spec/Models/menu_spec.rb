require 'spec_helper'

require 'menu'

describe Menu do

  it "Knows the array of item objects" do
    menu = Menu.new

    actual = [
              Item.new("Channa Masala", 5.95, "Yummy goodness"),
              Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness"),
              ]

    expected = menu.items

    expect(actual).to eq expected
  end

end