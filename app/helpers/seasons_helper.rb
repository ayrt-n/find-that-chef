module SeasonsHelper
  def link_to_season(season, html_options = {})
    link_to("#{season.number} (#{season.name})", season, html_options)
  end
end
