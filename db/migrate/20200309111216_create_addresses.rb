class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
