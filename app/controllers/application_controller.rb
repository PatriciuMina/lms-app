class ApplicationController < ActionController::Base
  #filter_parameter_logging :password, :password_confirmation

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_action :check_subdomain


  #def check_subdomain
    #unless request.subdomains(0).first == current_user.domain
      #redirect_to root_path, alert: 'You are not authorized to access this domain'
      #end
    #end

  protected

  def configure_permitted_parameters
    added_attrs = [:name, :email, :domain, :school_id, :role, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs

  end
end


