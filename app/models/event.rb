class Event < ApplicationRecord
  belongs_to :user
  validates :time_difference, presence: true

  # validate :cannot_have_conflict
  validates :start_time, :end_time, :overlap => {:scope => ["user_id", "end_date"]}
  before_save :geocode_endpoints
  
  # def cannot_have_conflict
  #   conflicts = Event.where(user: user).where("\
  #     (start_time < :start_time AND end_time > :start_time)\
  #     OR (start_time < :end_time AND end_time > :end_time)",
  #     start_time: start_time, end_time: end_time)
  #   if conflicts.present?
  #     errors.add(:start_time, "Not possible Fool, check the time lol")
  #   end
  # end

  def start_date_time
    return nil unless start_date && start_time
    DateTime.new(start_date.year, start_date.month, start_date.day, start_time.hour, start_time.min, start_time.sec, start_time.zone)
  end

  def travel_time_class
     if category == "Workout"
      "blue-travel"
     elsif category == "Work"
      "red-travel"
     elsif category == "Social"
      "yellow-travel"
     elsif category == "Reminder"
      "green-travel"
     elsif category == "Birthday"
      "orange-travel"
     end
  end
  
  def event_time_class 
    if category == "Workout"
      "blue-event"
    elsif category == "Work"
      "red-event"
    elsif category == "Social"
      "yellow-event"
    elsif category == "Reminder"
      "green-event"
    elsif category == "Birthday"
      "orange-event"
    end
  end

  private

  def geocode_endpoints
    if previous_location_changed?
      geocoded = Geocoder.search(previous_location).first
      if geocoded
        self.start_lat = geocoded.latitude
        self.start_lng = geocoded.longitude
      end
    end

    if event_location_changed?
      geocoded = Geocoder.search(event_location).first
      if geocoded
        self.end_lat = geocoded.latitude
        self.end_lng = geocoded.longitude
      end
    end
  end

end
