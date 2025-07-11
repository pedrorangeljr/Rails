class Produto 

  def initialize(attrs=nil) 
    if attrs.present?
      self.id = attrs["id"]
      self.nome = attrs["nome"]
    end
  end

  attr_accessor :id, :nome

  #metodo salvar
  def salvar 
    ActiveRecord::Base.connection.execute("INSERT INTO produtos1(nome)VALUES('#{self.nome}');")
  end

  #metodo atualizar
  def atualizar 
    ActiveRecord::Base.connection.execute("UPDATE produtos1 SET nome = '#{self.nome}' WHERE id=#{self.id};")
  end

  #metodo deletar
  def excluir 
     ActiveRecord::Base.connection.execute("DELETE FROM produtos1 WHERE id=#{self.id};")
  end

  # Metodo Mostrar na tela.
  def self.buscar 
    produtos = ActiveRecord::Base.connection.exec_query("SELECT * FROM produtos1")
    return produtos.map{|p| Produto.new(p)}
  end


end