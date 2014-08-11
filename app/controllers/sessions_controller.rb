class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.password
      session[:users] ||= []
      session[:users] << user.id
      redirect_to :controller => 'user', :action => 'show', :username => user.username
    elsif user
      # save password to user
      user.password = params[:password]
      if user.save
        session[:users] ||= []
        session[:users] << user.id
        redirect_to :controller => 'user', :action => 'show', :username => user.username
      end
    else
      render :new
    end
  end

  def destroy
    user = User.find_by(username: params[:username])
    session[:users].delete(user.id)
    redirect_to :controller => 'user', :action => 'show', :username => user.username
  end
end
