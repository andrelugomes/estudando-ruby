require_relative 'produto'
require_relative 'impresso'

class Livro < Produto
  include Impresso
  #Accessr é tanto leitura quando escrita. Tipo get e set
  #attr_accessor :titulo, :preco, :ano_lancamento

  #Reader apenas leitura. deve ser criado no construtor initialize
  attr_reader :possui_reimpressao, :possui_contracapa

  #Construtor
  def initialize titulo, preco, ano_lancamento, possui_reimpressao, editora, possui_contracapa
    super(titulo, preco, ano_lancamento,editora)
    @possui_reimpressao = possui_reimpressao
    @possui_contracapa = possui_contracapa
  end

  def matches?(query)
    query=="livro" || query=="impresso"
  end
end
