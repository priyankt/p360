class Amenity
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :amenity_name, String, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime

  has n, :propertyAmenities
  has n, :properties, :through => :propertyAmenities

end
