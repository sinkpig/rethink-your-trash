class Material < ApplicationRecord
  has_many :trades

  validates :name, uniqueness: true, presence: true
end
