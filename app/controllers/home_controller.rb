class HomeController < ApplicationController
	 skip_before_action :authenticate_user!, only: [:landing,:editphoto]
  def index
  end

  def landing
  end

  def editphoto
  	p params
  	@user = User.find(params[:id])
  	@user.avatar = params[:avatar]
  	if @user.save
  	 	data = {code: @user}
    	return render json: data  
    end
  

  end

 end
