class Kid < ApplicationRecord
  belongs_to :parent, class_name: 'User', foreign_key: 'user_id'
  has_many :babysits
  has_many :events, through: :babysits

  has_one_attached :photo

  validates :first_name, presence: true
end
