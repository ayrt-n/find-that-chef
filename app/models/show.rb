class Show < ApplicationRecord
  has_many :appearances
  has_many :chefs, -> { distinct }, through: :appearances

  validates :name, presence: true, uniqueness: true
end
