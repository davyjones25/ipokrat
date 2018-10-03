class AddRetailerToPrescriptions < ActiveRecord::Migration[5.2]
  def change
    add_reference :prescriptions, :retailer, foreign_key: true
  end
end
