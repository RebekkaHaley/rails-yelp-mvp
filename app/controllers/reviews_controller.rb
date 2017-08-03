class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:index, :show, :new, :create]

  def index
    @reviews = @restaurant.reviews
  end

  def show
    @reviews = @restaurant.reviews
    @review = @reviews.find(params[:id])
  end

  def new
    @review = @restaurant.reviews.new
  end

  def create
    @review = @restaurant.reviews.create(review_params)
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

#    restaurant_reviews GET  /restaurants/:restaurant_id/reviews(.:format)     reviews#index
#                       POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#     restaurant_review GET  /restaurants/:restaurant_id/reviews/:id(.:format) reviews#show
#           restaurants GET  /restaurants(.:format)                            restaurants#index
#                       POST /restaurants(.:format)                            restaurants#create
#        new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
#            restaurant GET  /restaurants/:id(.:format)                        restaurants#show
