class BabysitsController < ApplicationController
  def create
    kid = Kid.find(params[:kid_id])
    @nanny = User.find(params[:babysit][:user_id])
    @babysit = Babysit.new
    @babysit.kid = kid
    @kid = Kid.new
    @babysit.nanny = @nanny

    if @babysit.save
      redirect_to dashboard_path
    else
      render 'pages/dashboard'
    end
  end
end
