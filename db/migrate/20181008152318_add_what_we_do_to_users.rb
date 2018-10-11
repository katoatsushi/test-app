class AddWhatWeDoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :what_we_do, :string
  end
end
