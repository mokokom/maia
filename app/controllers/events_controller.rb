class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @kid = Kid.find(params[:kid_id])
    @babysit = current_user.babysits.find(params[:babysit_id])
    @event = Event.new(event_params)
    @event.babysit = @babysit
    if @event.save
      redirect_to dashboard_path
      @notification = Notification.create(content: '' "#{@event.title}", user: current_user, event: @event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)

    redirect_to dashboard_path
  end

  private

  def event_params
    params.require(:event).permit(:tag, :content, :begin_event, :end_event, :title, :badge, :photo)
  end
end
