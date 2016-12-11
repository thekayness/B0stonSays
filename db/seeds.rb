# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# client = SODA::Client.new({:domain => "data.cityofboston.gov", :app_token => "9qklEHKAEThh6thj4O7n4YBQI"})


# results = client.get("427a-3cn5", :$limit => 500)
# results.each do |result|

# 	report = Report.create(status: result.violstatus, level: result.viollevel, description: result.descript, comments: result.comments, date: result.issdttm, license: result.licenseno)
# 	restaurant = Restaurant.find_or_create_by(name: result.businessname)
# 	restaurant.address = result.address
# 	restaurant.license = result.licenseno
# 	restaurant.status = result.violstatus
# 	restaurant.location = result.location
# 	restaurant.reports << report

# 	restaurant.save
# end

require 'csv'

CSV.foreach('../Food_Establishment_Inspections.csv', :headers => true) do |record|

	restaurant = Restaurant.find_or_create_by(license_no: record[5]) do |restaurant|
		restaurant.address = record[20]
		restaurant.city = record[21]
		restaurant.vendor_type = record[10]
		restaurant.name = record[0]
		restaurant.lic_status = record[8]
		restaurant.location = record[25]
	end
	
	inspection = Inspection.create(license_no: record[5], lic_issue_date: record[6], lic_exp_date: record[7], result: record[11], result_date: record[12], viol_code: record[13], viol_level: record[14], viol_desc: record[15], comments: record[19], viol_date: record[16])
	
	restaurant.inspections << inspection
	inspection.save
	restaurant.save
end