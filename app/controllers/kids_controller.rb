class KidsController < ApplicationController
  def index
    @kids = Kid.all
  end

  def show
    @kid = Kid.find(params[:id])
  end

  def create
    @kid = Kid.new(kid_params)
    @kid.parent = current_user
    if @kid.save
      redirect_to dashboard_path
    else
      render :news
    end
  end

  def edit
    @kid = Kid.find(params[:id])
  end

  def update
    @kid = Kid.find(params[:id])
    @kid.update(kid_params)
    @kid.save
    redirect_to kid_path
  end

  private

  def kid_params
    params.require(:kid).permit(:first_name, :weight, :age, :photo)
  end

  def kids_params
  params.require(:kids).permit(:title, :body, :photo)
end

end
