class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :address, :role, presence: true
  validates :description, presence: true, if: :cooperative?
  has_many :trades
  has_many :cooperative_materials
  has_many :materials, through: :cooperative_materials

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  enum role: {
    person: "person",
    cooperative: "cooperative"
  }

  def cooperative?
    role == "cooperative"
  end

  def person?
    role == "person"
  end
end
