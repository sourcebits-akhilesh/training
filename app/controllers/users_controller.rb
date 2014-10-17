class UsersController < ApplicationController

  def new
  	@user=User.new
  end

  def index
  end

  def create
  	@user=User.new(user_params)
  	@user.save
  	redirect_to root_path
  end


  def thagu

  end


  private

  def user_params
  	params.require(:user).permit!
  end

end
