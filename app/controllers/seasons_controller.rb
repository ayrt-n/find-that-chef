class SeasonsController < ApplicationController
  def show
    @season = Season.find(params[:id])
    @seasons = Season.where(show_id: @season.show_id)
    @chefs = @season.chefs.includes(:restaurants)
  end
end
