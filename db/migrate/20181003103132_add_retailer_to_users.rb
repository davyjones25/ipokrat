class AddRetailerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :retailer, :boolean
  end
end
