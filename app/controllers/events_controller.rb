class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def weekly
  end

  def monthly
  end

  def daily
    @day = params[:start_date] || Date.today
    @events = []
    @events = Event.where(user_id: current_user.id, end_date: @day)
    @events = [] if @events.nil?
  end

  def show
  end

  def new
    @date = params[:date]
    @event = Event.new
    @hide_footer = true
  end

  def create
    @event = Event.new(events_params)
    @event.user = current_user
    @event.start_date = @event.end_date if @event.start_date.nil?
    if @event.save
      EventJob.set(wait_until: @event.start_date_time).perform_later(@event.id)
      redirect_to "/?start_date=#{params[:event][:end_date]}"
    else
      render 'new'
    end
  end

  def edit
    @date = params[:date]
    @hide_footer = true
  end

  def update
    if @event.update(events_params)
      redirect_to "/?start_date=#{params[:event][:end_date]}"
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  private

  def events_params
    params.require(:event).permit(:previous_location, :event_location, :description, :name,
      :category, :start_time, :end_time, :start_date, :end_date, :travel_type, :time_difference)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end


