class UsersController < ApplicationController

	def show
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.avatar
	end

	def editphoto
    	data = {:code => "NOK"}
    	render json: data  
  	end

end
