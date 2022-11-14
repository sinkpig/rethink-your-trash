class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @trades = current_user.trades.where(status: "In progress" || "Pending")
    @materials = Material.all
    #map with cooperatives
    #wallet
  end
end
