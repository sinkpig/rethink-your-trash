class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :address, :role, presence: true
  validates :description, presence: true, if: :cooperative?

  enum role: {
    person: "Person",
    cooperative: "Cooperative"
  }

  def cooperative?
    role == "Cooperative"
  end
end
