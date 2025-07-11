class HomeController < ApplicationController
  def index
    @teste = "Raimundo"
    
    #produto = Produto.new
    #produto.nome = "teclado"
    #produto.salvar

    #produto = Produto.new
    #produto.id = 4
    #produto.nome = "NotBook Dell"
    #produto.atualizar

    produto = Produto.new
    produto.id = 4
    produto.excluir

    @produtos = Produto.buscar
  end
end
