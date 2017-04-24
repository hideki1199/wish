class ProfilesController < ApplicationController

  def index
    @information = Profile.all
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
    params.require(:profile).permit(:name, :current_job, :past_job, :business_skill, :private_skill, :business_connection, :private_connection, :qualification)
  end
end
