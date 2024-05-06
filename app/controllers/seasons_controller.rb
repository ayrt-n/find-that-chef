class SeasonsController < ApplicationController
  def show
    @season = Season.find(params[:id])
    @show = @season.show
    @seasons = @show.seasons
    @chefs = @season.chefs.includes(:restaurants)

    render 'shows/show'
  end
end
