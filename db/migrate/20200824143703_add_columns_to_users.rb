class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :home_address, :string
    add_column :users, :mobile, :string
    add_column :users, :work_address, :string
    add_column :users, :username, :string
  end
end
