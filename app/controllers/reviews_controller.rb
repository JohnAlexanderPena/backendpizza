class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  def new
    @review = Review.new
  end

  def create
  @review = Review.create(review_params)
    if @review.valid?
    render json: @review
    else
    render json: {status: "error", code: 400, errors: "Cannot review ag"}
  end
  end

 #  @review = Review.create(review_params)
 # #if the current pizzaplaces have the current user_id params throw error
 #  @pizzaplace = Pizza.find(params[pizzaplace_id])
 #  #create a for loop to iterate through the @pizzaplaces.users and see if we find a matching @review.id
 #  @pizzaplace.user_ids.each{ |user|
 #    if @review.user_id == user
 #      return render json: {status: "error", code: 400, errors: "Cannot review again"}
 #    }
 #  end
  def update
    @review = Review.find(params[:id])
    @review.update(review_params)

  render json: @review

  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    render json: @review
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :user_id, :pizzaplace_id)
  end

end
