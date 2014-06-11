class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.string :description
      t.decimal :credits
      t.decimal :retailPrice
      t.decimal :ndpPrice
      t.decimal :distPrice
      t.integer :mtdSalesQty
      t.integer :ytdSalesQty
      t.decimal :mtdSalesQty
      t.decimal :ytdSalesValue
      t.references :category, index: true

      t.timestamps
    end
  end
end
