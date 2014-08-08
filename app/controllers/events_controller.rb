class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def new
  end

  def create
    @event = Event.new
    @event.length = params[:length]
    @event.stroke = params[:stroke]
    @event.meet_id = params[:meet_id]

    if @event.save
      redirect_to "/events/#{ @event.id }"
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find_by(id: params[:id])
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.length = params[:length]
    @event.stroke = params[:stroke]
    @event.meet_id = params[:meet_id]

    if @event.save
      redirect_to "/events/#{ @event.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy


    redirect_to "/events"
  end
end
