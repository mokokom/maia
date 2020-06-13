class Babysit < ApplicationRecord
  belongs_to :kid
  belongs_to :nanny, class_name: 'User', foreign_key: 'user_id'
  has_many :events, dependent: :destroy

  validates :begin_date, :end_date, presence: true
end
