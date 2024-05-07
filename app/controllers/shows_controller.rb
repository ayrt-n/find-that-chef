class ShowsController < ApplicationController
  def show
    @show = Show.find(params[:id])
    @seasons = @show.seasons
    @pagy, @chefs = pagy(@show.chefs.order(:first_name, :last_name).includes(:restaurants))
  end
end
