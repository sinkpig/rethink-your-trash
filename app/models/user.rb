class User < ApplicationRecord
  include PgSearch::Model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :address, :role, :email, presence: true
  # validates :description, presence: true, if: :cooperative?
  has_many :trades
  has_many :cooperative_materials
  has_many :materials, through: :cooperative_materials

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  enum role: {
    person: "person",
    cooperative: "cooperative"
  }

  pg_search_scope :global_search,
    against: :name,
    associated_against: {
      materials: :name
    },
    using: {
      tsearch: { prefix: true }
    }

  def cooperative?
    role == "cooperative"
  end

  def person?
    role == "person"
  end

end
