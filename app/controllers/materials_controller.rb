class MaterialsController < ApplicationController
  def index
    @materials = Material.all
    # Make relations between materials and cooperatives
    # @cooperative
  end
end
