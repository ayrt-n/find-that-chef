class PagesController < ApplicationController
  def home
    @chefs = Show.find_by(name: 'Top Chef').chefs.includes(:restaurants)
  end
end
