class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :address_type
      t.integer :person_id

      t.timestamps
    end
  end
end
