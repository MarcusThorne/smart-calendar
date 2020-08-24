class EventsController < ApplicationController
  def home
  end

  def new
    @events = Event.new
  end
  
  def create
    @event = Event.new(params[:id])
  end
  
  def edit
    @event
  end

  def update
  end

  def destroy
  end

  private 

  def events_params
  end
end
