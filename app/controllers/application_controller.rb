class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys:
      [:email, :password, :password_confirmation, :fname,
      :lname])


  devise_parameter_sanitizer.permit(:account_update, keys:
      [:email, :password, :password_confirmation, :fname,
      :lname])
end
end
