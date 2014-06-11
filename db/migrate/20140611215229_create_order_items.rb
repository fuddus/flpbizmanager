class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :sku
      t.string :description
      t.decimal :retail
      t.decimal :cost
      t.decimal :credits
      t.decimal :profit
      t.boolean :delivered
      t.references :order, index: true

      t.timestamps
    end
  end
end
