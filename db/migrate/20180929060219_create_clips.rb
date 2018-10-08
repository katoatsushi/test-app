class CreateClips < ActiveRecord::Migration[5.1]
  def change
    create_table :clips do |t|
      t.references :customer, null:false
      t.references :event, null:false
      t.timestamps
    end
      # add_index :clips, :customer_id
      # add_index :clips, :event_id
      add_index :clips, [:customer_id ,:event_id]
      #spliteの書き方
  end
end

