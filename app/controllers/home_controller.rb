class HomeController < ApplicationController
	 skip_before_action :authenticate_user!, only: [:landing,:editphoto]
  def index
  end

  def landing
  end

  def editphoto
  	data = {:code => "OK"}
    render json: data  
  end
end
