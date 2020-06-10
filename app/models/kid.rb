class Kid < ApplicationRecord
  belongs_to :user
  has_many :babysits
  has_many :events, through: :babysits

  validates :first_name, presence: true
end
