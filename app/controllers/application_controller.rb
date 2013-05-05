class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private

  def current_user
      @current_user ||= Library.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to log_in_url, alert: 'not authorized' if current_user.nil?
  end
end
