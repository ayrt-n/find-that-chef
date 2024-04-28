class AddDetailsToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :city, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :category, :text, array: true, default: []
    add_column :restaurants, :rating, :decimal, precision: 3, scale: 2
  end
end
