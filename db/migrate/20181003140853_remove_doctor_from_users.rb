class RemoveDoctorFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :doctor, :boolean
  end
end
