require "spec_helper"

require "item"

describe Item do

  it "has a name" do
    item = Item.new("Channa Masala", 5.95, "Yummy Goodness")

   actual = "Channa Masala"

   expected = item.name

   expect(actual).to eq expected
  end

  it "has a price" do
    item = Item.new("Channa Masala", 5.95, "Yummy Goodness")

    actual = 5.95

    expected = item.price

    expect(actual).to eq expected
  end

  it "has a description" do
    item = Item.new("Channa Masala", 5.95, "Yummy Goodness")

    actual = "Yummy Goodness"

    expected = item.description

    expect(actual).to eq expected
  end

end