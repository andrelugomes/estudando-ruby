require_relative 'produto'
class EBook < Produto

  #Construtor igual ao da Herança
  #def initialize titulo, preco, ano_lancamento, editora
    #super(titulo, preco, ano_lancamento,editora)
  #end

  def matches?(query)
    ["ebook", "digital"].include?(query)
  end
end
