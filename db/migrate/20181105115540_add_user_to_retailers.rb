class AddUserToRetailers < ActiveRecord::Migration[5.2]
  def change
    add_reference :retailers, :user, foreign_key: true
  end
end
