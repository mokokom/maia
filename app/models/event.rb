class Event < ApplicationRecord
  belongs_to :babysit
  has_many :notifications

  has_one_attached :photo

  validates :tag, :content, :begin_event, presence: true
end
