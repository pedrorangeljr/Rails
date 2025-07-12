class ProdutosController < ApplicationController 
  def index 
    @produtos = Produtos2.all
  end
end