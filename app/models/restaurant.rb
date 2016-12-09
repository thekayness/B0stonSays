class Restaurant < ActiveRecord::Base
	has_many :reports
	def curr_status
	end
end