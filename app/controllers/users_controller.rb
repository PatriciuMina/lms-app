class UsersController < ApplicationController
  before_action :authenticate_user!
  def index

  end

  def new
    @user = User.new
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

  def user_params
    params.require(:user).permit(:name, :email, :domain, :role, :password, :password_confirmation)
  end

  #def configure_permitted_parameters
    #added_attrs = [:name, :email, :domain, :role, :password, :password_confirmation]
    #devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    #end

end