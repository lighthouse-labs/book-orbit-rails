class UserController < ApplicationController
  def index
  end

  def show
    if params[:collection]
      @collection = params[:collection]
    end

    if @user = User.find_by(username: params[:username])
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

  def edit
    add_bookmark if params[:add]
  end

  def add_bookmark
  end

  def edit_collections
  end

end
