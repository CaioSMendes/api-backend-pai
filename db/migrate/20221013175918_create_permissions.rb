class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.datetime :dtIncatu
      t.string :status

      t.timestamps
    end
  end
end
