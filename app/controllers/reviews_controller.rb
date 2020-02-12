class ReviewsController < ApplicationController
  #  assigns a new review as @review (FAILED - 1)

  #  creates a new Review (FAILED - 2)
  #  assigns a newly created review as @review (FAILED - 3)
  # redirects to the parent restaurant (FAILED - 4)

  # assigns a newly created but unsaved review as @review (FAILED - 5)
  # re-renders the 'new' template (FAILED - 6)

  # CREATE
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant_id = params[:restaurant_id]
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end

  #============================== PROTECTION ===================================

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
