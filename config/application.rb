require_relative 'boot'

require 'rails/all'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Dontpuke
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.active_record.raise_in_transactional_callbacks = true
    config.action_controller.permit_all_parameters = true
  end
end

# require 'soda/client'

# class InspectionsParser
		
# 	@@client = SODA::Client.new({:domain => "data.cityofboston.gov", :app_token => ""})

# 	def self.parse
# 		self.new.call
# 	end

# 	def call
# 		get_everything
# 	end

# 	def get_everything
# 		results = @@client.get("427a-3cn5", :$limit => 500000)
# 		#go get stuff we want
# 		results.each do |result|
# 			restaurant = Restaurant.find_or_create_by(name: result.businessname)
# 			restaurant.address = result.address
# 			restaurant.license = result.licenseno
# 			restaurant.status = result.violstatus
# 			restaurant.location = result.location

# 			report = Report.create(status: result.violstatus, level: result.viollevel, description: result.descript, comments: result.comments, date: result.statusdate, license: result.licenseno)
# 			if report.license == restaurant.license
# 				restaurant.reports << report
# 			end
# 			restaurant.save
			
# 		end
# 		#byebug
# 	end
# end