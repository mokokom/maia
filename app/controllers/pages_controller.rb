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
    @events = Event.all
  end
end
