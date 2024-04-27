class Chef < ApplicationRecord
  has_many :restaurants
  has_many :appearances
  has_many :shows, -> { distinct }, through: :appearances

  validates :first_name, presence: true
  validates :last_name, presence: true
end
