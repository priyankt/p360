migration 2, :create_agents do
  up do
    create_table :agents do
      column :id, Integer, :serial => true
      column :name, String, :length => 255
      column :address, Text
      column :phone, String, :length => 255
      column :email, String, :length => 255
    end
  end

  down do
    drop_table :agents
  end
end
