class CooperativesController < ApplicationController
  before_action :find_cooperative, except: %i[index]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @cooperatives = User.where(role: "cooperative")
  end

  def show
    @cooperative = User.find(params[:id])
    # map
  end

  private

  def find_cooperative
    @user = User.where(role: "cooperative")
  end

  def cooperative_params
    params.require(:cooperative).permit(:name, :email, :address, :description)
  end

  def map
    @markers = @cooperative.geocoded.map do |cooperative|
      {
        lat: cooperative.latitude,
        lng: cooperative.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cooperative: }),
        image_url: helpers.asset_url("marker_cooperative.png")
      }
    end
  end
end
