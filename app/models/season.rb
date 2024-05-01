class Season < ApplicationRecord
  belongs_to :show
  has_many :appearances
  has_many :chefs, through: :appearances
end
