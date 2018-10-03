class RemoveDoctorFromPrescriptions < ActiveRecord::Migration[5.2]
  def change
    remove_reference :prescriptions, :doctor, foreign_key: true
  end
end
