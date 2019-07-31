class AdminsController < ApplicationController
	layout 'admin'
	
	def index		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			@user.update(admin: :admin)
			redirect_to '/admins'
		else
			render 'new'
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password_digest)                               
	end
end
