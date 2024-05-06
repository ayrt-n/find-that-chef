class AddRankToAppearances < ActiveRecord::Migration[7.0]
  def change
    add_column :appearances, :rank, :integer
  end
end
