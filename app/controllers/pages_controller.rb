class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if current_user.person?
      @trades = Trade.where(person_id: current_user.id, status: ["In progress", "Pending"]).limit(5)
      @materials = Material.all
      #map with cooperatives
      #wallet
   else
      @trades = Trade.where(cooperative_id: current_user.id)
   end
  end

  def profile
    @trades = current_user.trades
    # @wallet = current.user.wallet.value
    # @materials = ???
  end
end
