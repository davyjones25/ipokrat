class AddLastnameToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :last_name, :string
  end
end
