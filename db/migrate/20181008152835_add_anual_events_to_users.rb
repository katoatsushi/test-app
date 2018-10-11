class AddAnualEventsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :anual_events, :string
  end
end
