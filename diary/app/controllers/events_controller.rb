# Defining methods for CRUD for the events.Ensureing user is signed in

class EventsController < ApplicationController

  before_action :ensure_signed_in
  before_action :load_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = current_user.events
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    
    if @event.save
      redirect_to events_path
    else
      render :action => :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path
    else
      render :action => :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :venue, :date, :description)
  end

  def load_event
    @event = current_user.events.find(params[:id])
  end
end
