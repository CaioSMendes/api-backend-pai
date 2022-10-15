class AddProfileToPermission < ActiveRecord::Migration[7.0]
  def change
    add_reference :permissions, :profile, null: false, foreign_key: true
  end
end
