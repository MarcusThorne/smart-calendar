class EventsController < ApplicationController
  def weekly

  end

  def monthly 
  end

  def daily
    @day = params[:start_date]
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
