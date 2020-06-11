class DashboardController < ApplicationController
  def new
    @kid = Kid.new
  end
end
