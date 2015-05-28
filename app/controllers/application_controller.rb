class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception, if: :isWebRequest?


  #Code is from Stackoverflow. May want to revisit it. http://stackoverflow.com/questions/23673040/override-the-protect-from-forgery-strategy-in-a-controller 
  def isWebRequest?
    request.subdomains[-1] != 'api' 
  end


protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
  
end

    # @current_user ||= User.find(session[:user_id]) if session[:user_id]