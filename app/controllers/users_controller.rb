require 'uri'

class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :restrict_access
  def index
  end

  def new
    @user = User.new
    #binding.pry
    @subdomain = request.subdomains(0).first
    #binding.pry
    @school = School.where(domain: @subdomain).first
    #binding.pry
  end

  def create
    @user = User.new(user_params)
    #binding.pry

    if @user.save
      redirect_to users_admin_index_path, alert: "User created successfully."
    else
      redirect_to new_users_admin_path, alert: "Error creating user."
    end
  end

  def restrict_access
    if current_user.domain != request.subdomains(0).first
      reset_session
      redirect_to root_path and nil
    end
  end



  def user_params
    params.require(:user).permit(:name, :email, :domain, :school_id, :role, :password, :password_confirmation)
  end

  #def configure_permitted_parameters
    #added_attrs = [:name, :email, :domain, :role, :password, :password_confirmation]
    #devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    #end

end