class RestaurantController < ApplicationController

  def show
    # debugger
    @dish = params[:dish]
  end

end