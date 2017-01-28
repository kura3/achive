class RemoveTitleFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :Name, :text
    remove_column :contacts, :Email, :text
  end
end
