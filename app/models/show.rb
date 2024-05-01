class Show < ApplicationRecord
  has_many :appearances
  has_many :chefs, -> { distinct }, through: :appearances
  has_many :seasons

  validates :name, presence: true, uniqueness: true

  def chefs_from_season(season_num)
    seasons.find_by(number: season_num).chefs.distinct
  end
end
