class AddFlagsToInspections < ActiveRecord::Migration[5.0]
  def change
  	add_column :inspections, :flags, :integer, default: 0
  end
end
