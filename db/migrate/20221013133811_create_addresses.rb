class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :typeAddress
      t.string :phone
      t.string :zipcode
      t.string :address
      t.string :complement
      t.string :uf
      t.string :city
      t.datetime :dtIncatu

      t.timestamps
    end
  end
end
