class ProfilesController < ApplicationController

  def index
    @information = Profile.all
    if params[:keyword].present?
      @search = Profile.where("name LIKE :name OR current_job LIKE :name OR past_job LIKE :name OR business_skill LIKE :name OR private_skill LIKE :name OR business_connection LIKE :name OR private_connection LIKE :name OR qualification LIKE :name", name: "%#{params[:keyword]}%")
    end
  end

  def new
    @profile = Profile.new
  end

  def create
    Profile.create(profile_params)
    redirect_to root_path
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(profile_params)
    redirect_to profile_path(Profile.find(params[:id]))
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :current_job, :past_job, :business_skill, :private_skill, :business_connection, :private_connection, :qualification)
  end
end
