class DropDdressesTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :ddresses
  end
end
