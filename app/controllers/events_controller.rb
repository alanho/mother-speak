class EventsController < ApplicationController
  respond_to :html, :json
  
  def index
    @events = Event.all
    
    respond_with(@events)
  end
  
  def show
    @event = Event.find(params[:id])
    
    respond_with(@event)
  end
  
  def nearby
    latitude = params[:latitude].to_f
    longitude = params[:longitude].to_f
    @events = Event.where(:latitude => (latitude - 0.1)..(latitude + 0.1), :longitude => (longitude - 0.1)..(longitude + 0.1)).all
    
    respond_with(@events)
  end
  
  def search
    @event = Event.find_by_hashtag(params[:hashtag][/[^#]+$/])
    
    if @event
      redirect_to event_path(@event) 
    else
      redirect_to root_path, :error => "Event not found"
    end
  end
end
