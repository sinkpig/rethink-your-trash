class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :map, only: :home

  def home
    if current_user&.person?
      @trades = Trade.where(person_id: current_user.id, status: ["In progress", "Pending"]).limit(5)
      @materials = Material.all
      map
      # fazer a wallet
    elsif current_user&.cooperative?
      @trades = Trade.where(cooperative_id: current_user.id)
    else
      @materials = Material.all
      map
    end
  end

  def profile
    @trades = current_user.trades
    # @wallet = current.user.wallet.value
    # @materials = ???
  end

  private

  def map
    @cooperatives = User.where(role: "cooperative")
    @markers = @cooperatives.geocoded.map do |cooperative|
      {
        lat: cooperative.latitude,
        lng: cooperative.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cooperative: }),
        image_url: helpers.asset_url("marker_cooperative.png")
      }
    end
  end
end
