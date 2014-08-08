class UserController < ApplicationController
  def index
  end

  def show

  end

  def create
    @user = User.new(username: params[:username])

    if @user.save
      redirect "/#{@user.username}"
    else
      # go somewhere else
    end
  end

end
