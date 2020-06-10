class KidsController < ApplicationController

  def show
    @kid = Kid.find(params[:id])
  end

  def create
    @kid = Kid.new(kid_param)
    @kid.parent = current_user
    if @kid.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @kid = Kid.find(params[:id])
  end

def update
  @kid = Kid.find(params[:id])
  @kid.update(kid_param)
  redirect_to kid_path
    if @item.save
      redirect_to item_path
    else
      render :new
    end
end

  private

  def kid_param
    params.require(:kid).permit(:first_name, :weight, :age)
  end
end
