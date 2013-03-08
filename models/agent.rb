class Agent
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :agent_name, String, :required => true
  property :address, Text, :required => true
  property :phone, String, :required => true
  property :email, String, :format => :email_address, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime

  has n, :properties, :model => 'Property', :inverse => :agent

end
