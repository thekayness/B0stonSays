class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
    	t.belongs_to :restaurant, index: true
      t.string :status
      t.string :level
      t.text :description
      t.string :comments
      t.string :date
    end
  end
end
