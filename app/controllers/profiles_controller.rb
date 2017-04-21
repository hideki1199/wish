class ProfilesController < ApplicationController

  def index
    @information = Profile.find(1)
    @search = Profile.where('name LIKE(?)', "%#{params[:keyword]}%")
  end

  def new
    @profile = Profile.new
  end

  def create
    Profile.create(create_params)
    redirect_to root_path
  end

  def show

  end

  private
  def create_params
    params.permit(:name, :current_job, :past_job, :business_skills, :private_slills, :business_connection, :private_connection, :qualification)
  end
end
