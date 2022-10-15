class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :typeClient
      t.string :cpf
      t.string :cnpj
      t.string :nomeCleint
      t.string :nameFantasy
      t.string :status
      t.string :rfidCard
      t.string :passwordKeypad

      t.timestamps
    end
  end
end
