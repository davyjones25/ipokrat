class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.references :doctor, foreign_key: true
      t.references :client, foreign_key: true
      t.references :retailer, foreign_key: true
      t.boolean :active
      t.integer :length_of_treatment
      t.boolean :renewable
      t.boolean :refundable

      t.timestamps
    end
  end
end
