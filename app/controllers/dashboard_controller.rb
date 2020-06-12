class DashboardController < ApplicationController
  def new
    @kid = Kid.new
    @event = Event.new
  end
end
