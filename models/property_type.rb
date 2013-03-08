class PropertyType
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :type_name, String, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime

  has n, :properties, :model => 'Property', :inverse => :propertyType

end
