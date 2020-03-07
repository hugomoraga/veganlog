class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :productName, :productname
  end
end
