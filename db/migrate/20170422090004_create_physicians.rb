class CreatePhysicians < ActiveRecord::Migration[5.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :speciality
      t.string :gender
      t.integer :age
      t.string :nationality
      t.string :mobile_number
      t.string :email_id
      t.string :marital_status
      t.string :blood_group

      t.timestamps
    end
  end
end
