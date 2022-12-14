class Trade < ApplicationRecord
  belongs_to :person, polymorphic: true
  belongs_to :cooperative, polymorphic: true
  belongs_to :material

  validates :delivery_date, presence: true
  validates :material_quantity, numericality: { only_integer: true }, presence: true
  validates :delivery_method, inclusion: { in: ["Pick up", "Drop off"] }
  validates :status, inclusion: { in: ["Pending", "Denied", "In Progress", "Finished"] }
end
