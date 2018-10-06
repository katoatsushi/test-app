class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :eventname
      t.datetime :when
      t.string :where
      t.integer :cost

      t.timestamps
    end
  end
end
