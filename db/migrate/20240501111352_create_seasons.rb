class CreateSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.integer :number
      t.string :name
      t.belongs_to :show, index: true, foreign_key: true

      t.timestamps
    end
  end
end
