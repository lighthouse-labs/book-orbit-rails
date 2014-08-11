class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  def unlocked_users
    session[:users] ||= []
  end

  helper_method :unlocked_users
end
