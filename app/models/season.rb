class Season < ApplicationRecord
  belongs_to :show
  has_many :appearances
  has_many :chefs, through: :appearances

  def full_name
    "#{number} (#{name})"
  end
end 
