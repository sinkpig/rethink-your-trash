class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :map, only: :home

  def home
    if current_user&.person?
      @trades = Trade.where(person_id: current_user.id, status: ["In progress", "Pending"])
      @materials = Material.all.sample(8)
      map
      # fazer a wallet
    elsif current_user&.cooperative?
      @trades = Trade.where(cooperative_id: current_user.id)
    else
      @materials = Material.all.sample(6)
      map
    end
  end

  def profile
    @trades = Trade.where(person_id: current_user.id, status: ["In progress", "Pending"]).limit(5)
    # @wallet = current.user.wallet.value
    # only cooperatives @materials that they accept
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
