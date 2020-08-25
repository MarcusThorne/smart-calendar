class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def home
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(events_params)
    @event.user = current_user
    if @event.save!
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @event.update(events_params)
      redirect_to event_path(@event)
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
      :category, :start_time, :end_time, :start_date, :end_date, :travel_type)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end


