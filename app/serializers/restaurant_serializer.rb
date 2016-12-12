class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :vendor_type, :address, :city, :lic_status, :license_no, :location
  has_many :inspections
end
