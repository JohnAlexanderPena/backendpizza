class PizzaPlacesController < ApplicationController

  def index
    @pizzaplace = User.all

    render json: @pizzaplace
  end

  def show
    @pizzaplaces = User.find(params[:id])

    render json: @pizzaplaces
  end


  def create
    @pizzaplaces = User.new(pizzaplaces_params)
      if @pizzaplaces.valid?
    @pizzaplaces = User.save
      render json: @pizzaplaces
  end

private

def pizzaplaces_params
  require(:pizzaplaces).permit(:name, :address, :lat, :long, :average_rating)
end

end
