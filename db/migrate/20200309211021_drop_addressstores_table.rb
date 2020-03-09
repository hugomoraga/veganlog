class DropAddressstoresTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :address_stores
  end
end
