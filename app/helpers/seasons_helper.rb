module SeasonsHelper
  def link_to_season(season, html_options = {})
    link_to(season.full_name, season, html_options)
  end
end
