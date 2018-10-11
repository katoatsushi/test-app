class AddHowOftenWeDoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :how_often_we_do, :string
  end
end
