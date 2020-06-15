class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def contact
  end

  def about
  end

  def dashboard
    @kid = Kid.new
    @babysit = Babysit.new
    email = params["email"]
    @result = User.find_by(email: email)
    @events = current_user.events
    if params[:kids]
      kids_ids = params[:kids].split("_&_").map(:to_i)
      @events = [];
      kids_ids.each do |kid_id|
        @events << Event.where(kid: Kid.find(kid_id))
      end
    end
    if params[:tags]
      tags = params[:tags].split("_&_")
      @events.filter! do |event|
        tags.include?(event.tag)
      end
    end
  end
end
