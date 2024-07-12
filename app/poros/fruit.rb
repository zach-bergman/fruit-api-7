class Fruit
  attr_reader :genus, :name, :id, :family, :order, :nutritions
  
  def initialize(attributes)
    @genus = attributes[:genus]
    @name = attributes[:name]
    @id = attributes[:id]
    @family = attributes[:family]
    @order = attributes[:order]
    @nutritions = attributes[:nutritions]
  end
end