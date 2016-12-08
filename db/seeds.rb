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