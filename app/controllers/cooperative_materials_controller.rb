class CooperativeMaterialsController < ApplicationController

  def index
    @cooperative_materials = CooperativeMaterial.where(cooperative_id: current_user.id)
  end

  def create
    @cooperative_material = CooperativeMaterial.new(cooperative_material_params)
    @cooperative_material.user = current_user
    if current_user.cooperative? && @cooperative_material.save?
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
