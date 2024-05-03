class Chef < ApplicationRecord
  has_many :restaurants
  has_many :appearances
  has_many :shows, -> { distinct }, through: :appearances

  default_scope { order(:first_name, :last_name) }

  validates :first_name, presence: true
  validates :last_name, presence: true
end
