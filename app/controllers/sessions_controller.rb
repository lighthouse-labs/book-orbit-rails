class SessionsController < ApplicationController

  def new
  end

  def create

    @user = User.find_by(username: params[:username])
    
    # If user exists and has a password
    if @user && @user.password_digest

      if @user.password_digest == params[:password_digest]
        session[:users] ||= []
        session[:users] << @user.id
        redirect_to :controller => 'users', :action => 'show', :username => @user.username
      else
        flash[:notice] = "Incorrect password"
        render :controller => 'users', :action => 'show'
      end
    
    # If user exists and does not have a password
    elsif @user

      # Save password to user
      @user.password_digest = params[:password_digest]
      if @user.save
        
        session[:users] ||= []
        session[:users] << @user.id
        
        redirect_to :controller => 'users', :action => 'show', :username => @user.username
      end

    # Otherwise, create a new user
    else
      render :new
    end
  end

  def destroy
    @user = User.find_by(username: params[:username])
    session[:users].delete(@user.id)
    redirect_to :controller => 'users', :action => 'show', :username => @user.username
  end
end
