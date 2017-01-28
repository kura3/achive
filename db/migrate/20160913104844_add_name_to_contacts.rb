class AddNameToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :name, :text
    add_column :contacts, :email, :text
  end
end
