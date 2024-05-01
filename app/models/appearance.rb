class Appearance < ApplicationRecord
  belongs_to :show
  belongs_to :season
  belongs_to :chef
end
