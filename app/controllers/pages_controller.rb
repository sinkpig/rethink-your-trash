class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :map, only: :home

  def home
    if current_user&.person?
      @trades = Trade.where(person_id: current_user.id, status: ["In Progress", "Pending"]).order(created_at: :desc)
      @materials = Material.all.sample(8)
      # @cooperative = User.find(params[:cooperative_id])
      map
      # fazer a wallet
    elsif current_user&.cooperative?
      @trades = Trade.where(cooperative_id: current_user.id).order(created_at: :asc)
    else
      @materials = Material.all.sample(6)
      @cooperatives = User.where(role: "cooperative").sample(6)
      map
    end
  end

  def profile
    @trades = Trade.where(person_id: current_user.id, status: ["In Progress", "Pending"]).limit(5)
    @cooperative = User.find(current_user.id)
    @cooperative_materials = CooperativeMaterial.where(user_id: @cooperative.id)
    @cooperative_material = CooperativeMaterial.new

    #@materials eh a lista de todos os materiais que ainda nao foram selecionados por esta cooperative (vai mostrar apenas os que faltam como opcao para serem selecionados)
    @materials = Material.where.not(id: @cooperative_materials.map(&:material_id))

    map_single_marker
  end

  private

  def map
    @cooperatives_map = User.where(role: "cooperative")
    @markers = @cooperatives_map.geocoded.map do |cooperative|
      {
        lat: cooperative.latitude,
        lng: cooperative.longitude,
        info_window: render_to_string(partial: "info_window", locals: { cooperative: }),
        image_url: helpers.asset_url("marker_cooperative.png")
      }
    end
  end

  def map_single_marker
    @marker = [{
      lat: @cooperative.latitude,
      lng: @cooperative.longitude,
      info_window: render_to_string(partial: "info_window", locals: { cooperative: @cooperative }),
      image_url: helpers.asset_url("marker_person.png")
    }]
  end
end
