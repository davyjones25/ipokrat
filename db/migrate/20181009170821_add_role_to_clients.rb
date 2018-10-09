class AddRoleToClients < ActiveRecord::Migration[5.2]
  def change
    add_reference :clients, :role, foreign_key: true
  end
end
