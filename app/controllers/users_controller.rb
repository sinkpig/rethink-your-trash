class UsersController < ApplicationController
  def index
    @cooperatives = User.where(role: "cooperative")
  end

  def show
    @cooperative = User.find(params[:id])
  end
end
