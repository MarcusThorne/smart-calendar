class EventJob < ApplicationJob
  queue_as :default

  def perform(event_id)
    event = Event.find(event_id.to_i)
    UserMailer.with(user: event.user).event.deliver_later
  end
end
