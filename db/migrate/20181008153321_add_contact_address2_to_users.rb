class AddContactAddress2ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :contact_address2, :string
  end
end
