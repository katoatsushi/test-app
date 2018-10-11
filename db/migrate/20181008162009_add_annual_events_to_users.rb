class AddAnnualEventsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :annual_events, :string
  end
end
