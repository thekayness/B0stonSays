class CreateInspections < ActiveRecord::Migration[5.0]
  def change
    create_table :inspections do |t|
      t.string :license_no
      t.string :lic_issue_date
      t.string :lic_exp_date
      t.string :result
      t.string :result_date
      t.string :viol_code
      t.string :viol_level
      t.text :viol_desc
      t.string :comments
      t.string :viol_date
    end
  end

  
end
