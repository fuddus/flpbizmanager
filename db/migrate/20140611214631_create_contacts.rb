class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.date :contacted_on
      t.text :discussed
      t.date :nextContact
      t.references :customer, index: true

      t.timestamps
    end
  end
end
