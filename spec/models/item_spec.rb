require "spec_helper"

require "item"

describe Item do
  it "has a name" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness")

    expect(item.name).to eq "Channa Masala"
  end

  it "has a price" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness")

    expect(item.price).to eq 5.95
  end

  it "has a description" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness")

    expect(item.description).to eq "Yummy goodness"
  end


end