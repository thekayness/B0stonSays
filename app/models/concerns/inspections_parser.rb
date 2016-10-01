require 'soda/client'

class InspectionsParser
		
	@@client = SODA::Client.new({:domain => "data.cityofboston.gov", :app_token => ""})

	def get_everything
		results = @@client.get("427a-3cn5", :$limit => 20)
		#go get stuff we want
		results.each do |result|
			restaurant = Restaurant.find_or_create_by(name: result.businessname)
			restaurant.address = result.address
			restaurant.license = result.licenseno
			restaurant.status = result.violstatus
			restaurant.location = result.location
			restaurant.save
			report = Report.create(status: result.violstatus, level: result.viollevel, description: result.descript, comments: comments, date: result.statusdate)
			
		end
		#byebug
	end
end