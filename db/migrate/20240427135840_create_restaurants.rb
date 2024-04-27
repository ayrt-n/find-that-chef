class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.belongs_to :chef, index: true, foreign_key: true

      t.timestamps
    end
  end
end
