class RestaurantsController < ApplicationController
	before_action :logged_in_user

  def index
		@restaurants = Restaurant.all
  end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		if @restaurant.save
			redirect_to restaurants_path
		else
			render 'new'
		end
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		flash[:success] = "削除しました！"
		redirect_to restaurants_path
	end

	def logged_in_user
		unless logged_in?
			flash[:danger] = "ログインしてください"
			redirect_to login_url
		end
	end

	private
	def restaurant_params
		params[:restaurant].permit(:name)
	end
end
