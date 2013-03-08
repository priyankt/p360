migration 4, :create_amenities do
  up do
    create_table :amenities do
      column :id, Integer, :serial => true
      column :amenity_name, String, :length => 255
    end
  end

  down do
    drop_table :amenities
  end
end
