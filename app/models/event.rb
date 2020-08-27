class Event < ApplicationRecord
  belongs_to :user
  validates :time_difference, presence: true

  def start_date_time
   DateTime.new(start_date.year, start_date.month, start_date.day, start_time.hour, start_time.min, start_time.sec, start_time.zone)
 end
end
