class RemoveRetailerFromPrescriptions < ActiveRecord::Migration[5.2]
  def change
    remove_reference :prescriptions, :retailer, foreign_key: true
  end
end
