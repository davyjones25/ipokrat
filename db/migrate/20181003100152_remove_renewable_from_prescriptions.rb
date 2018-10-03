class RemoveRenewableFromPrescriptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :prescriptions, :renewable, :boolean
  end
end
