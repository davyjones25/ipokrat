class CreateDrugs < ActiveRecord::Migration[5.2]
  def change
    create_table :drugs do |t|
      t.references :prescription, foreign_key: true
      t.string :name
      t.text :posology

      t.timestamps
    end
  end
end
