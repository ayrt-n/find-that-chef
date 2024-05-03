class Show < ApplicationRecord
  has_many :appearances
  has_many :chefs, -> { distinct }, through: :appearances
  has_many :seasons

  validates :name, presence: true, uniqueness: true

  def chefs_from_season(season_id: nil)
    season_id ? seasons.find(season_id).chefs.distinct : chefs
  end
end
