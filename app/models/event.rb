class Event < ApplicationRecord
  belongs_to :user
  validates :time_difference, presence: true
end
