class CreateFunctionalities < ActiveRecord::Migration[7.0]
  def change
    create_table :functionalities do |t|
      t.string :nameFunctionality
      t.datetime :dtIncatu
      t.string :status

      t.timestamps
    end
  end
end
