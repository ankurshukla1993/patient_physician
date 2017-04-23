class CreatePhysicianAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :physician_addresses do |t|
      t.integer :physician_id
      t.integer :address_id

      t.timestamps
    end
  end
end
