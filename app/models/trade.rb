class Trade < ApplicationRecord
  belongs_to :user
  belongs_to :material

  validates :created_date, :delivery_date
  validates :material_quantity, numericality: { only_integer: true }, presence: true
  validates :delivery_method, inclusion: { in: ["Pick up", "Drop off"] }
  # TO DO: STATUS Inclusion? enumerable?
end
