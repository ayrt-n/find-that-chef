class Chef < ApplicationRecord
  has_many :restaurants
  has_many :appearances
  has_many :shows, -> { distinct }, through: :appearances
end
