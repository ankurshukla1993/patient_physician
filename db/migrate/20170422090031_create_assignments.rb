class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.integer :patient_id
      t.integer :referring_physician_id
      t.integer :primary_care_physician_id
      t.string :pharmacy_name

      t.timestamps
    end
  end
end
