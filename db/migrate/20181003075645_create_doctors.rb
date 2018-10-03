class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :address
      t.integer :rpps
      t.integer :am
      t.integer :phone
      t.string :speciality

      t.timestamps
    end
  end
end
