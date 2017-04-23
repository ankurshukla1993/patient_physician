class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address_for
      t.string :flat_number
      t.string :street_name
      t.string :area
      t.string :city
      t.string :state
      t.string :pin_code

      t.timestamps
    end
  end
end
