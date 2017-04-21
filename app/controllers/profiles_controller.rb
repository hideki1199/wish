class ProfilesController < ApplicationController

  def index
    @information = Profile.find(1)
    @search = Profile.where('name LIKE(?)', "%#{params[:keyword]}%")

  end

  def new

  end

  def show

  end

end
