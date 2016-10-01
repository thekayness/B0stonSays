class AddLocationToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :location, :string
  end
end
