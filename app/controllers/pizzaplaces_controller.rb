class PizzaplacesController < ApplicationController

  def index
    @pizzaplaces = Pizzaplace.all

    render json: @pizzaplaces
  end

  def show
    @pizzaplace = Pizzaplace.find(params[:id])

    render json: @pizzaplace
  end


  def create
    @pizzaplace = Pizzaplace.new(pizzaplaces_params)
      if @pizzaplace.valid?
    @pizzaplace = Pizzaplace.save
      render json: @pizzaplace
    end
  end

private

def pizzaplaces_params
  require(:pizzaplaces).permit(:name, :address, :lat, :long, :average_rating)
end

end
