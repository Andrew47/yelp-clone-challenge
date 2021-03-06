class RestaurantsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    current_user.restaurants << @restaurant
    if @restaurant.save
      redirect_to restaurants_path
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    unless current_user.restaurants.include?(@restaurant)
      redirect_to restaurants_path
      flash[:alert]= "Incorrect User"
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)

    redirect_to restaurants_path
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if current_user.restaurants.include?(@restaurant)
      @restaurant.destroy
      flash[:notice]= "#{@restaurant.name} has been deleted"
    else
      flash[:alert]= "Incorrect User"
    end
    redirect_to restaurants_path
  end
end
