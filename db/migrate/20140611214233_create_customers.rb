class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postcode
      t.string :phone
      t.string :email
      t.decimal :mtdPurchases
      t.decimal :ytdPurchases
      t.references :country, index: true

      t.timestamps
    end
  end
end
