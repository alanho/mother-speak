class TracksController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
    @track = @event.tracks.find(params[:id])
  end
  
  def edit
    @event = Event.find(params[:event_id])
    @track = @event.tracks.find(params[:id])
  end
end
