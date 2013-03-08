migration 3, :create_property_types do
  up do
    create_table :property_types do
      column :id, Integer, :serial => true
      column :type_name, String, :length => 255
    end
  end

  down do
    drop_table :property_types
  end
end
