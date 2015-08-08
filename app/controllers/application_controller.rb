class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_action :devise_parameter_sanitizer, if: :devise_controller?

  protected
  def devise_parameter_sanitizer
    if resource_class == Customer
      Customers::ParameterSanitizer.new(Customer, :customer, params)
    else
      puts "$$$$$$$$$$$$$$$$$$$$ in_else see ApplicationController $$$$$$$$$$$$$$$$$$$$"
    end
  end
end
