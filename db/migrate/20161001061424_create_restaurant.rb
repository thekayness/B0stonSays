class CreateRestaurant < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :type
    	t.string :address
    	t.string :lic_status
    	t.integer :license
    end
  end
end

