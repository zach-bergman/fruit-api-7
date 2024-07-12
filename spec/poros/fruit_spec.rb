require "rails_helper"

RSpec.describe Fruit do
  before :each do
    attributes = {
      genus: "Musa",
      name: "Banana",
      id: 1,
      family: "Musaceae",
      order: "Zingiberales",
      nutritions: {
        calories: 96, 
        fat: 0.2, 
        sugar: 17.2, 
        carbohydrates: 22.0, 
        protein: 1.3
      }
    }

    @fruit = Fruit.new(attributes)
  end

  it "exists and has attributes" do
    expect(@fruit).to be_a(Fruit)
    expect(@fruit.genus).to eq("Musa")
    expect(@fruit.name).to eq("Banana")
    expect(@fruit.id).to eq(1)
    expect(@fruit.family).to eq("Musaceae")
    expect(@fruit.order).to eq("Zingiberales")
    expect(@fruit.nutritions).to be_a(Hash)
    expect(@fruit.nutritions[:calories]).to eq(96)
    expect(@fruit.nutritions[:fat]).to eq(0.2)
    expect(@fruit.nutritions[:sugar]).to eq(17.2)
    expect(@fruit.nutritions[:carbohydrates]).to eq(22.0)
    expect(@fruit.nutritions[:protein]).to eq(1.3)
  end
end