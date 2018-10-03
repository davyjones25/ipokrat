class RemoveClientFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :client, :coolean
  end
end
