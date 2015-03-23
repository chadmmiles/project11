class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :address
      t.integer :square_footage
      t.integer :beds
      t.decimal :bathrooms
      t.date :date_on_market
      t.boolean :for_sale_by_owner

      t.timestamps null: false
    end
  end
end
