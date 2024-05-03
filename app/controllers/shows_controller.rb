class ShowsController < ApplicationController
  def show
    @show = Show.find_by(name: 'Top Chef')
    @seasons = @show.seasons.map { |s| ["#{s.number} (#{s.name})", s.id] }

    @pagy, @chefs = pagy(
      @show.chefs_from_season(season_id: params[:season_id]).includes(:restaurants)
    )
  end
end
