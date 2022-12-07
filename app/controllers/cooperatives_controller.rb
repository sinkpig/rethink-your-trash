class CooperativesController < ApplicationController
  before_action :find_cooperative, except: %i[index]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @cooperatives = User.where(role: "cooperative").global_search(params[:query])
    else
      @cooperatives = User.where(role: "cooperative")
    end
  end

  def show
    @cooperative = User.find(params[:id])
    map
  end

  def update
    @user = User.find(params[:id])
    @user.update(description_params)
    redirect_to profile_path
  end

  private

  def find_cooperative
    @user = User.where(role: "cooperative")
  end

  def cooperative_params
    params.require(:cooperative).permit(:name, :email, :address, :description, :photo)
  end

  def description_params
    params.require(:user).permit(:description, :photo)
  end

  def map
    @marker = [{
      lat: @cooperative.latitude,
      lng: @cooperative.longitude,
      info_window: render_to_string(partial: "info_window", locals: { cooperative: @cooperative }),
      image_url: helpers.asset_url("marker_cooperative.png")
    }]
  end
end
