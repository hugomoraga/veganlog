class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productName
      t.string :comercialName
      t.string :markName
      t.integer :price
      t.string :ingredients
      t.string :description
      t.string :imgUrl
      t.integer :addressId
      t.integer :storeId
      t.integer :userId
      t.integer :totalScore
      t.refences :category

      t.timestamps
    end
  end
end
