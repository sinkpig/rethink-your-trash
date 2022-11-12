class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatabl

  validates :name, :address, :role, presence: true
  validates :description, presence: true, if: :cooperative?

  enum role: {
    person: "person",
    cooperative: "cooperative"
  }

  def cooperative?
    role == "cooperative"
  end
end
