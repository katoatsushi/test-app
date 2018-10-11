class AddContactAddress1ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :contact_address1, :string
  end
end
