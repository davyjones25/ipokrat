class AddRenewableToPrescriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :prescriptions, :renewable, :integer
  end
end
