class CreateAppearances < ActiveRecord::Migration[7.0]
  def change
    create_table :appearances do |t|
      t.integer :season
      t.belongs_to :chef
      t.belongs_to :show

      t.timestamps
    end
  end
end
