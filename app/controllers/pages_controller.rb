class PagesController < ApplicationController
  def home
    @shows = Show.first(5)
    @restaurants = Restaurant.order('RANDOM()').limit(5)
  end
end
