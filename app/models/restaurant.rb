class Restaurant < ActiveRecord::Base
	has_many :reports
	def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end