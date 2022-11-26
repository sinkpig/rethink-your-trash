class CooperativeMaterialsController < ApplicationController

  def index
    @cooperative_materials = CooperativeMaterial.where(user_id: params[:cooperative_id])
  end

  def create
    @cooperative_material = CooperativeMaterial.new(cooperative_material_params)
    cooperative = User.find(params[:cooperative_id])
    @cooperative_material.user = cooperative
    if cooperative.cooperative? && @cooperative_material.save?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def cooperative_material_params
    params.require(:cooperative_material).permit(:material_id)
  end

end
