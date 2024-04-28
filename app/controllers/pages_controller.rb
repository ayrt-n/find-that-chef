class PagesController < ApplicationController
  def home
    @chefs = Show.find_by(name: 'Top Chef').chefs
  end
end
