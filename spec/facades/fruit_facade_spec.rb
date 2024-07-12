require "rails_helper"

RSpec.describe FruitFacade do
  it "exists with no arguments passed" do
    facade = FruitFacade.new

    expect(facade).to be_a(FruitFacade)
  end

  it "exists with arguments passed" do
    facade = FruitFacade.new(name_search: "apple")

    expect(facade).to be_a(FruitFacade)
    expect(facade.instance_variable_get(:@name_search)).to eq("apple")
  end

  describe "Instance Methods" do
    describe "#search_by_name" do
      it "returns a Fruit object from a name search", :vcr do
        facade = FruitFacade.new(name_search: "banana")
        
        expect(facade.search_by_name).to be_a(Fruit)
      end
    end
  end
end