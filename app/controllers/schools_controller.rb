class SchoolsController < ApplicationController
  def index

  end

  def new
    @school = School.new

  end

  def create
    @school = School.new(school_params)
    #binding.pry

    if @school.save
      redirect_to root_path, alert: "School created successfully."
    else
      render new
    end
  end

  def school_params
    params.require(:school).permit(:name, :domain)
  end
  #def configure_permitted_parameters
  #added_attrs = [:name, :email, :domain, :role, :password, :password_confirmation]
  #devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #end

end