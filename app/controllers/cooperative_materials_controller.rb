class CooperativeMaterialsController < ApplicationController
  before_action :set_cooperative, only: %i[index new]


  def index
    @cooperative_materials = CooperativeMaterial.where(user_id: @cooperative.id)
  end

  def new
    @cooperative_material = CooperativeMaterial.new
    @cooperative_materials = CooperativeMaterial.where(user_id: @cooperative.id)
    @materials = Material.where.not(id: @cooperative_materials.map(&:material_id))
      # eh uma lista de todos os materiais que ainda nao estao listados nessa cooperative (vai mostrart apenas os que faltam como opcao para serem selecionados)
  end

  def create
    @cooperative_material = CooperativeMaterial.new(cooperative_material_params)
    @cooperative_material.user = current_user
    if current_user.cooperative? && @cooperative_material.save
      redirect_to cooperative_cooperative_materials_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @cooperative_material.update(cooperative_material_params)
      flash[:notice] = "Successfully addeed material"
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private

  def cooperative_material_params
    params.require(:cooperative_material).permit(:material_id)
  end

  def set_cooperative
    @cooperative = User.find(params[:cooperative_id])
  end

end
