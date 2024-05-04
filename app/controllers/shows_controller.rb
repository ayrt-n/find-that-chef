class ShowsController < ApplicationController
  def show
    @show = Show.find(params[:id])
    @seasons = @show.seasons
    @pagy, @chefs = pagy(@show.chefs.includes(:restaurants))
  end
end
