class CreatePatientAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_addresses do |t|
      t.integer :patient_id
      t.integer :address_id

      t.timestamps
    end
  end
end
