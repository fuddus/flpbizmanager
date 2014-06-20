class AddCompletedToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :completed, :boolean
  end
end
