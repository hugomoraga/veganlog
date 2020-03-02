class RemoveUseridFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :userId, :string
  end
end
