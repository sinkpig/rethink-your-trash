class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
    @trades = current_user.trades
    # @wallet = current.user.wallet.value
    # @materials = ???
  end
end
