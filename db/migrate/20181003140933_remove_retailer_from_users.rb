class RemoveRetailerFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :retailer, :boolean
  end
end
