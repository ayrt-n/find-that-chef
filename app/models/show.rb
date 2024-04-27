class Show < ApplicationRecord
  has_many :appearances
  has_many :chefs, -> { distinct }, through: :appearances
end
