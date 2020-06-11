class EventsController < ApplicationController
  def create
    @kid = User.find(params[:kid_id])
    # @babysit = Babysit.find_by(kid:@kid, user:current_user)
    @babysit = Babysit.find(params[:babysit_id])
    @event = Event.new(event_params)
    @event.babysit = @babysit
    @event.save

    redirect_to dashboard_path
  end

  # def edit
  #   @event = Event.find(params[:id])
  # end

  # def update
  #   @event = Event.find(params[:id])
  #   @event.update(event_params)

  #   redirect_to dashboard_path
  # end

  private
  def event_params
    params.require(:event).permit(:tag, :content, :begin_event, :end_event, :photo)
  end
end
