class RemoveStoreidFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :storeId, :string
    
  end
end
