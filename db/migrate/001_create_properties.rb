migration 1, :create_properties do
  up do
    create_table :properties do
      column :id, Integer, :serial => true
      column :title, String, :length => 255
      column :bedrooms, Integer
      column :bathrooms, Integer
      column :balcony, Integer
      column :price, Integer
      column :size, Integer
      column :lat, Decimal
      column :lng, Decimal
      column :age, Integer
      column :tour_url, String, :length => 255
      column :thumb_url, String, :length => 255
    end
  end

  down do
    drop_table :properties
  end
end
