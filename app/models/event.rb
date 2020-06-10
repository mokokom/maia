class Event < ApplicationRecord
  belongs_to :babysit

  validates :tag, :content, :begin_event, :end_event, presence: true
end
