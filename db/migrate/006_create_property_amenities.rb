migration 6, :create_property_amenities do
  up do
    create_table :property_amenities do
      column :id, Integer, :serial => true
      column :status, Boolean
    end
  end

  down do
    drop_table :property_amenities
  end
end
