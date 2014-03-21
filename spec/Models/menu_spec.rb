require 'spec_helper'

require 'menu'

require 'item'

describe Menu do

  it "Knows the menu array for item 1" do
    menu = Menu.new

    #arghhh this needs to change
    actual =  "Channa Masala, 5.95, Yummy goodness, food1.jpg"

    expected = menu.items_to_string(0)

    expect(actual).to eq expected
  end



end



