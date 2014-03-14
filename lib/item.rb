class Item

  attr_reader :name, :price, :description, :pic

  def initialize(name, price, description, pic)
    @name = name
    @price = price
    @description = description
    @pic = pic
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.pic == other.pic
  end
end