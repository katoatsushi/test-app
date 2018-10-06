class AddPopulationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :population, :integer
  end
end
