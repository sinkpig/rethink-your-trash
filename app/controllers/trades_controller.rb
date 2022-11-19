class TradesController < ApplicationController

  def new
    @trade = Trade.new
    @cooperative = User.find(params[:user_id])
  end

  def create
    @trade = Trade.new(trade_params)
    @trade.created_date = DateTime.now
    @trade.status = "Pending"
    @trade.person = current_user
    @trade.cooperative = User.find(params[:user_id])

    if @trade.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
      #the render shows the fields that must be corrected by the user
    end
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def update
    if @trade.update(trade_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @trade = Trade.find(params[:id])
  end

  def destroy
    trade = Trade.find(params[:id])
    trade.destroy
    redirect_to root_path, status: :see_other
  end

  private
  def trade_params
    params.require(:trade).permit(:material_id, :delivery_date, :material_quantity, :delivery_method)
  end

end
