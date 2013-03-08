class Property
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :title, String
  property :bedrooms, Integer, :required => true
  property :bathrooms, Integer
  property :balcony, Integer
  property :possession, Date
  #property :furnishing, Enum[ :none, :partial, :full ], :default => :none
  property :floor, Integer
  property :total_floors, Integer
  property :price, Integer, :required => true
  property :size, Integer, :required => true
  property :lat, Decimal
  property :lng, Decimal
  property :age, Integer
  property :tour_url, String
  property :thumb_url, String
  property :facing, String
  property :created_at, DateTime
  property :updated_at, DateTime

  has n, :propertyAmenities
  has n, :amenities, :through => :propertyAmenities

  #belongs_to :agent, :model => 'Agent', :inverse => :properties
  belongs_to :agent
  #belongs_to :propertyType, :model => 'PropertyType', :inverse => :properties
  belongs_to :propertyType

end
