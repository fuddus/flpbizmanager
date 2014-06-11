class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :mtdSalesQty
      t.integer :ytdSalesQty
      t.decimal :mtdSalesValue
      t.decimal :ytdSalesValue

      t.timestamps
    end
  end
end
