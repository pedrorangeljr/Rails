class AddDescricaoProdutos2 < ActiveRecord::Migration[7.1]
  def change
    add_column :produtos2s, :descricao, :text
  end
end
