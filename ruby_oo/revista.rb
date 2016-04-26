require_relative "produto"

class Revista < Produto
  include Impresso

  attr_reader :possui_reimpressao, :numero

  #Construtor
  def initialize titulo, preco, ano_lancamento, possui_reimpressao, editora, numero
    super(titulo, preco, ano_lancamento,editora)
    @possui_reimpressao = possui_reimpressao
    @numero = numero
  end

  def matches?(query)
    query=="revista" || query=="impresso"
  end
end
