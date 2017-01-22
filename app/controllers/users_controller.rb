class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all 
		authorize @users
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:notice] = "Your name was successfully updated!"
			redirect_to edit_user_registration_path # root_url OK to use if you want
  	else
  		flash[:error] = "There is a error updating your name. Please try again."
  		redirect_to edit_user_registration_path
  	end
	end

	private

	def user_params
		params.require(:user).permit(:name)
	end

end
