class TradesController < ApplicationController
  before_action :set_trade, only: %i[show edit update destroy]

  def new
    @trade = Trade.new
    @cooperative = User.find(params[:cooperative_id])
  end

  def create
    @trade = Trade.new(trade_params)
    @trade.created_date = DateTime.now
    @trade.status = "Pending"
    @trade.person = current_user
    @trade.cooperative = User.find(params[:cooperative_id])

    if @trade.save!
      redirect_to root_path
    else
      # redirect_to new_cooperative_trade_path, notice: "Invalid field"
      render :new, status: :unprocessable_entity
      # flash.keep[:alert] = "Invalid field"
      #the render shows the fields that must be corrected by the user
    end
  end

  def show
  end

  def update
    if @trade.update(trade_params)
      flash[:notice] = "Successfully changed status"
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    @trade.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def trade_params
    params.require(:trade).permit(:material_id, :delivery_date, :material_quantity, :delivery_method, :status)
  end

  def set_trade
    @trade = Trade.find(params[:id])
  end
end
