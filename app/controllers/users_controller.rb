class UsersController < ApplicationController
  def index 
  end

  def create
    user = User.new(user_params)
    if user.save 
      render json: user 
    else
      render json: {status: "error"}
    end 
  end
end
