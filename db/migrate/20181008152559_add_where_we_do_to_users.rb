class AddWhereWeDoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :where_we_do, :string
  end
end
