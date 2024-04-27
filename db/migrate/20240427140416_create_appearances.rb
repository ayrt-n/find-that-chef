class CreateAppearances < ActiveRecord::Migration[7.0]
  def change
    create_table :appearances do |t|
      t.integer :season
      t.belongs_to :chef, index: true, foreign_key: true
      t.belongs_to :show, index: true, foreign_key: true

      t.timestamps
    end
  end
end
