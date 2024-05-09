class ShowsController < ApplicationController
  def show
    @show = params[:id] ? Show.find(params[:id]) : Show.where(name: 'Top Chef').first
    @seasons = @show.seasons
    @pagy, @chefs = pagy(@show.chefs.order(:first_name, :last_name).includes(:restaurants))
  end
end
