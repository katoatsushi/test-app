class AddIntroduceToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :introduce, :string
  end
end
