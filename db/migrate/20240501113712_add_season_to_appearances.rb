class AddSeasonToAppearances < ActiveRecord::Migration[7.0]
  def change
    add_reference :appearances, :season
  end
end
