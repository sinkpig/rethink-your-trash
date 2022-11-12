class TradesController < ApplicationController

  def index
    @trades = Trade.all
  end

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)

    if @trade.save
      redirect_to trades_path(@trade)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def update
    if @trade.update(trade_params)
      redirect_to trades_path(@trade)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    trade = Trade.find(params[:id])
    trade.destroy
    redirect_to trades_path(trade), status: :see_other
  end

  private
  def trade_params
    params.require(:trade).permit(:material, :delivery_date, :material_quantity)
  end

end
