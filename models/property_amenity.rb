class PropertyAmenity
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :status, Boolean

  belongs_to :property
  belongs_to :amenity
end
