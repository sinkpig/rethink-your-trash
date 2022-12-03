class CooperativeMaterialsController < ApplicationController
  before_action :set_cooperative, only: %i[index new]

  def create
    @cooperative_material = CooperativeMaterial.new(cooperative_material_params)
    @cooperative_material.user = current_user
    if current_user.cooperative? && @cooperative_material.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @cooperative_material = CooperativeMaterial.find(params[:id])
    @cooperative_material.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def cooperative_material_params
    params.require(:cooperative_material).permit(:material_id)
  end

  def set_cooperative
    @cooperative = User.find(params[:cooperative_id])
  end
end
