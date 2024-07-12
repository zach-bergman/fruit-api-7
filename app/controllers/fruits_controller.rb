class FruitsController < ApplicationController
  def index
    @facade = FruitFacade.new(name_search: params[:search])
  end
end