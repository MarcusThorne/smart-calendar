class EventJob < ApplicationJob
  queue_as :default

  def perform(event_id)
    event = Event.find(event_id.to_i)
    puts "OMMMGGGGG"
    UserMailer.with(user: event.user).welcome.deliver_later
  end
end
