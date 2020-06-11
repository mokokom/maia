class BabysitsController < ApplicationController
  def create
    @user = User.where(params[:email])
    @babysit = Babysit.new
    @babysit.kid = @kid
    @babysit.nanny = @user

    @babysit.save
  end
end
