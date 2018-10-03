class AddDoctorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :doctor, :boolean
  end
end
