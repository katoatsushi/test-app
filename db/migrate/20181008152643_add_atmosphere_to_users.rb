class AddAtmosphereToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :atmosphere, :string
  end
end
