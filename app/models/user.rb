class User < ApplicationRecord
  has_many :kids, dependent: :destroy
  has_many :babysits
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_inclusion_of :is_nanny, in: [true, false]
  validates :phone_number, format: { with: /\d{10}/, message: "Entrez un téléphone valide" }, allow_nil: true
  validates :email, presence: true, uniqueness: true, format: { with: /.+@.+\.[a-zA-Z0-9 ]+/, message: "Entrez un email valide" }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
