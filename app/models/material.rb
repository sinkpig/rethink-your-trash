class Material < ApplicationRecord
  has_many :trades
  has_many :cooperative_materials
  has_many :users, through: :cooperative_materials

  validates :name, uniqueness: true, presence: true

  def cooperatives
    cooperatives = []
    users.each do |user|
      next if user.person?

      cooperatives << user
    end
    cooperatives
  end
end
