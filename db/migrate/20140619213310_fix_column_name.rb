class FixColumnName < ActiveRecord::Migration
 def change
    rename_column :contacts, :nextContact, :next_contact
 end
end