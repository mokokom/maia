class Babysit < ApplicationRecord
  belongs_to :kid
  belongs_to :user
  has_many :events, dependent: :destroy
end
