class CooperativesController < ApplicationController
  before_action :find_cooperative, except: %i[index]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @cooperatives = User.where(role: "cooperative")
  end

  def show
    @cooperative = User.find(params[:id])
  end
  #check if we need to change database to separate the user types

  private

  def find_cooperative
    @user = User.where(role: "cooperative")
  end

  def cooperative_params
    params.require(:cooperative).permit(:name, :email, :address, :description)
  end

end
