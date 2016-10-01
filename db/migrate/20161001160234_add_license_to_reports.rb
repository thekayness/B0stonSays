class AddLicenseToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :license, :integer
  end
end
