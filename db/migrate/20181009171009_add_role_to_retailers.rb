class AddRoleToRetailers < ActiveRecord::Migration[5.2]
  def change
    add_reference :retailers, :role, foreign_key: true
  end
end
