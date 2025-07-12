class HomeController < ApplicationController
  def index
    @teste = "Raimundo"
    
    produto = Produto.new
    produto.nome = "Pc Dell Optiplex 360"
    produto.salvar

    #produto = Produto.new
    #produto.id = 4
    #produto.nome = "NotBook Dell"
    #produto.atualizar

    #produto = Produto.new
    #produto.id = 4
    #produto.excluir

   
    #@produtos = Produto.buscar
    #
    #produto = Produtos2.new 
    #produto.nome = "curso itensivo de mysql"
    #produto.save

    produto = Produtos2.find(4)
    produto.nome = "curso itensivo de mysql2"
    produto.save

    @produtos = Produtos2.all
  end
end
