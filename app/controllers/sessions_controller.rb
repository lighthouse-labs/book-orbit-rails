class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user
      session[:users] ||= []
      session[:users] << user.id
      redirect_to :controller => 'user', :action => 'show', :username => user.username
    else
      render :new
    end
  end

  def destroy
    session[:users] = 
    redirect_to root_path
  end
end
