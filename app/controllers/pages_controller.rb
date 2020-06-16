class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def contact
  end

  def about
  end

  def dashboard
  @kids = []
  @tags = []
    @kid = Kid.new
    @babysit = Babysit.new
    email = params["email"]
    @result = User.find_by(email: email)
    @events = Event.all
    if params[:kids] && params[:kids] != ""
      kids_ids = params[:kids].split("__").map{|kid|kid.to_i}
      @kids = kids_ids
      @events = [];
      kids_ids.each do |kid_id|
        @events << Kid.find(kid_id).events
      end
      @events = @events.flatten
    end
    if params[:tags] && params[:tags] != ""
      tags = params[:tags].split("__")
      @tags = tags
      @events = @events.to_a.filter do |event|
        tags.include?(event.tag)
      end
    end
  end

end
