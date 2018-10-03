class AddClientToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :client, foreign_key: true
  end
end
