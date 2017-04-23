class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
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
