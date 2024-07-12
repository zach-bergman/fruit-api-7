require "rails_helper"

RSpec.describe FruitService do
  describe "initialize" do
    it "exists" do
      service = FruitService.new

      expect(service).to be_a(FruitService)
    end
  end

  describe "#conn" do
    it "returns a Faraday connection" do
      service = FruitService.new
      conn = service.conn

      expect(conn).to be_a(Faraday::Connection)
    end
  end

  describe "#get_url" do
    it "returns a parsed JSON response", :vcr do
      response = FruitService.new.get_url("all")

      expect(response).to be_an(Array)

      expect(response.first).to have_key(:genus)
      expect(response.first[:genus]).to be_a(String)

      expect(response.first).to have_key(:name)
      expect(response.first[:name]).to be_a(String)

      expect(response.first).to have_key(:id)
      expect(response.first[:id]).to be_a(Integer)

      expect(response.first).to have_key(:family)
      expect(response.first[:family]).to be_a(String)

      expect(response.first).to have_key(:order)
      expect(response.first[:order]).to be_a(String)

      expect(response.first).to have_key(:nutritions)
      expect(response.first[:nutritions]).to be_a(Hash)
      expect(response.first[:nutritions]).to have_key(:carbohydrates)
      expect(response.first[:nutritions][:carbohydrates]).to be_a(Float)
      expect(response.first[:nutritions]).to have_key(:protein)
      expect(response.first[:nutritions][:protein]).to be_a(Float)
      expect(response.first[:nutritions]).to have_key(:fat)
      expect(response.first[:nutritions][:fat]).to be_a(Float)
      expect(response.first[:nutritions]).to have_key(:calories)
      expect(response.first[:nutritions][:calories]).to be_a(Integer)
      expect(response.first[:nutritions]).to have_key(:sugar)
      expect(response.first[:nutritions][:sugar]).to be_a(Float)
    end
  end

  describe "#search_by_name" do
    it "returns a parsed JSON response", :vcr do
      response = FruitService.new.search_by_name("banana")

      expect(response).to be_a(Hash)

      expect(response).to have_key(:genus)
      expect(response[:genus]).to be_a(String)

      expect(response).to have_key(:name)
      expect(response[:name]).to be_a(String)

      expect(response).to have_key(:id)
      expect(response[:id]).to be_a(Integer)

      expect(response).to have_key(:family)
      expect(response[:family]).to be_a(String)

      expect(response).to have_key(:order)
      expect(response[:order]).to be_a(String)

      expect(response).to have_key(:nutritions)
      expect(response[:nutritions]).to be_a(Hash)
      expect(response[:nutritions]).to have_key(:carbohydrates)
      expect(response[:nutritions][:carbohydrates]).to be_a(Float)
      expect(response[:nutritions]).to have_key(:protein)
      expect(response[:nutritions][:protein]).to be_a(Float)
      expect(response[:nutritions]).to have_key(:fat)
      expect(response[:nutritions][:fat]).to be_a(Float)
      expect(response[:nutritions]).to have_key(:calories)
      expect(response[:nutritions][:calories]).to be_a(Integer)
      expect(response[:nutritions]).to have_key(:sugar)
      expect(response[:nutritions][:sugar]).to be_a(Float)
    end
  end
end