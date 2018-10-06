class AddClubnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :clubname, :string
  end
end
