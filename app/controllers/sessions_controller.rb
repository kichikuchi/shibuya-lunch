class SessionsController < ApplicationController
  def new
  end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user
			remember user
			redirect_to controller: 'restaurants', action: 'index'
		else
			flash.now[:danger] = 'Invalid name/password combination'
			render 'new'
		end
	end

	def destroy
		log_out if logged_in?
		redirect_to login_path
	end
end
