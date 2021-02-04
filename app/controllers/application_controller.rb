class ApplicationController < ActionController::API
  # *********************************************************************************************
  # I DIDN'T METION THIS IN MY BLOG. GO BACK AND EDIT AND IS IT REALLY EEVEN NEEDED?
  # include ::ActionController::Cookies

  def current_user
    current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

end
