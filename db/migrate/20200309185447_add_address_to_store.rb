class AddAddressToStore < ActiveRecord::Migration[5.2]
  def change
    add_reference :stores, :address, foreign_key: true
  end
end
