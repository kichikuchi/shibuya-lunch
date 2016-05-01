class SessionsController < ApplicationController
  def new
  end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
		if user && user.authenticate(params[:session][:password])

		else
			flash.now[:danger] = 'Invalid name/password combination'
			render 'new'
		end
	end

	def destroy
	end
end
