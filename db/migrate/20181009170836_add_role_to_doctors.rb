class AddRoleToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :role, foreign_key: true
  end
end
