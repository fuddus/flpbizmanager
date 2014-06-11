class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :orderDate
      t.string :ourRef
      t.decimal :subtotal
      t.decimal :delivery
      t.decimal :discount
      t.decimal :total
      t.boolean :paid
      t.boolean :deliveredInFull
      t.references :customer, index: true

      t.timestamps
    end
  end
end
