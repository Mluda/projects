class ApplicationController < ActionController::Base
	
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

protected

  def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation) }
  end
# Thise will use the set parameter sanitizer
  #def devise_parameter_sanitizer
  #  if resource_class == User
  #    User::ParameterSanitizer.new(User, :user, params)
  #  else
  #    super # Use the default one
  #  end
#  end
end
