class SwimmerTimesController < ApplicationController

  def index
    @swimmer_times = SwimmerTime.all
  end

  def show
    @swimmer_times = SwimmerTime.find_by(id: params[:id])
  end

  def new
  end

  def create
    @swimmer_times = SwimmerTime.new
    @swimmer_times.duration = params[:duration]
     @swimmer_times.swimmer_id = params[:swimmer_id]
     @swimmer_times.event_id = params[:event_id]

    if  @swimmer_times.save
      redirect_to "/swimmertimes/#{  @swimmer_times.id }"
    else
      render 'new'
    end
  end

  def edit
    @swimmer_times = SwimmerTime.find_by(id: params[:id])
  end

  def update
    @swimmer_times = SwimmerTime.find_by(id: params[:id])
     @swimmer_times.duration = params[:duration]
    @swimmer_times.swimmer_id = params[:swimmer_id]
    @swimmer_times.event_id = params[:event_id]

    if @swimmer_times.save
      redirect_to "/swimmertimes/#{ @swimmer_times.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @swimmer_times = SwimmerTime.find_by(id: params[:id])
    @swimmer_times.destroy


    redirect_to "/swimmertimes"
  end
end
