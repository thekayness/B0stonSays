class Restaurant < ActiveRecord::Base
	has_many :inspections

	# validates_each :id, :name, :vendor_type, :address, :city, :licStatus, :license_no, :location, :longitude, :latitude, :state, allow_nil: true
	validate
    geocoded_by :full_address
	after_validation :geocode, :if => :address_changed?


	def full_address
		if address
			[address.squeeze(" "), city, state].compact.join(', ')
		end
	end

	def self.find_by_name(search_terms)
		where("name LIKE?", "%#{search_terms}%")
	end

end