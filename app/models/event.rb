class Event < ApplicationRecord
  belongs_to :user
  validates :time_difference, presence: true
  # validate :cannot_have_conflict
  validates :start_time, :end_time, :overlap => {:scope => ["user_id", "end_date"]}

  # def cannot_have_conflict
  #   conflicts = Event.where(user: user).where("\
  #     (start_time < :start_time AND end_time > :start_time)\
  #     OR (start_time < :end_time AND end_time > :end_time)",
  #     start_time: start_time, end_time: end_time)
  #   if conflicts.present?
  #     errors.add(:start_time, "Not possible Fool, check the time lol")
  #   end
  # end
end
