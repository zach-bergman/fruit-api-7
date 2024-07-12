class FruitFacade
  attr_reader :fruit
  
  def initialize(name_search: nil)
    @name_search = name_search
    @service = FruitService.new
    @fruit = search_by_name if name_search # need the end?
  end

  def search_by_name
    fruit_data = @service.search_by_name(@name_search)

    Fruit.new(fruit_data)
  end
end