class CreateProdutos2s < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos2s do |t|
      t.string :nome

      t.timestamps
    end
  end
end
