class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    
    # If user exists and has a password
    if @user && @user.password

      if @user.password == params[:password]
        session[:users] ||= []
        session[:users] << @user.id
        redirect_to :controller => 'user', :action => 'show', :username => @user.username
      else
        flash[:notice] = "Incorrect password"
        render :controller => 'user', :action => 'show'
      end
    
    # If user exists and does not have a password
    elsif @user
    
      # save password to user
      @user.password = params[:password]
      if @user.save
        
        session[:users] ||= []
        session[:users] << @user.id
        
        redirect_to :controller => 'user', :action => 'show', :username => @user.username
      end

    # Otherwise, create a new user
    else
      render :new
    end
  end

  def destroy
    @user = User.find_by(username: params[:username])
    session[:users].delete(@user.id)
    redirect_to :controller => 'user', :action => 'show', :username => @user.username
  end
end
