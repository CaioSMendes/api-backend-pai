class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :nameProfile
      t.datetime :dtIncatu
      t.string :status

      t.timestamps
    end
  end
end
