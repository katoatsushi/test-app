class AddPicture2ToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :picture2, :string
  end
end
