class Restaurant < ApplicationRecord
  belongs_to :chef

  validates :name, presence: true
end
