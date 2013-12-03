class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def logged_in?
    current_user != nil
  end

  protected

  def devise_parameter_sanitizer
    if resource_class == User
      debugger
      User::ParameterSanitizer.new(User, :user, params)
    else
      super
    end
  end
end
