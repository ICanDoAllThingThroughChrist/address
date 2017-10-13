class ChangeAddressToAdress < ActiveRecord::Migration[5.1]
  def change
  	rename_column :people, :address_id, :adress_id
  end
end
