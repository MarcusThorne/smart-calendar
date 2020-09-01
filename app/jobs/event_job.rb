class EventJob < ApplicationJob
  queue_as :default

  def perform(event_id)
    # This job only happens when the job is about to begin not when the job is created
    event = Event.find(event_id.to_i)
    UserMailer.with(user: event.user).event.deliver_later if event
    # the above if statement searches whether the event id is present at the time of the
    # job and if its not there then cancels the job even though the job appears in sidekiq.
  end
end
