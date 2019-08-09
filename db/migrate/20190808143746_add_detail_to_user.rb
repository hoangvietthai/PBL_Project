class AddDetailToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :reception_time, :string
    add_column :users, :url, :string
  end
end
