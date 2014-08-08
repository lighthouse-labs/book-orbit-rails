class UserController < ApplicationController
  def index
  end

  def show
    if User.find_by(username: params[:username])
      # do shit

    else
      create
    end
  end

  def create
    @user = User.new(username: params[:username])

    if @user.save
      redirect_to "/#{@user.username}"
    else
      # go somewhere else
    end
  end

end
