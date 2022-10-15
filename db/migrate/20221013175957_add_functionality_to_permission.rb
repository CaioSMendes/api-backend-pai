class AddFunctionalityToPermission < ActiveRecord::Migration[7.0]
  def change
    add_reference :permissions, :functionality, null: false, foreign_key: true
  end
end
