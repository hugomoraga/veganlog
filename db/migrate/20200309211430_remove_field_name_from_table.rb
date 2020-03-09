class RemoveFieldNameFromTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :stores, :address, :string

  end
end
