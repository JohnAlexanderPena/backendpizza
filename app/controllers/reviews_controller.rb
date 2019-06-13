class ReviewsController < ApplicationController

  def index
    @reviews = Review.all

    render json: @reviews
  end

  def show
  @review = Review.find(params[:id])

    render json: @review
  end


  def create

    Review.create(review_params)

      render json @review
  end

  private

  def review_params
    require(:reviews).permmit(:rating, :content, :user_id, :pizza_id)
  end
end
