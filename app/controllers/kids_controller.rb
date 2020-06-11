class KidsController < ApplicationController
  def create
  end

  def kids_params
  params.require(:kids).permit(:title, :body, :photo)
end

end
