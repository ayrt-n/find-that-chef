class SeasonsController < ApplicationController
  def show
    @season = Season.find(params[:id])
    @show = @season.show
    @seasons = @show.seasons
    @chefs = @season.chefs.rank_ordered.includes(:restaurants)

    render 'shows/show'
  end
end
