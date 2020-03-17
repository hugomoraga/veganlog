class RemoveFieldnameFromTable < ActiveRecord::Migration[5.2]

  def change
    remove_column :products, :addressId, :string

  end
end
