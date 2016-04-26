require_relative 'contador'

class Estoque
  attr_reader :livros
  def initialize
    @livros = []
    @vendas = []
    #Atribui o comportamento a o array de livro
    @livros.extend Contador
  end

  #Tell, Don't Ask.
  def exporta_csv
    @livros.each do |livro|
      puts livro.to_csv
    end
  end

  def mais_barato_que(valor)
    @livros.select do |livro|
      livro.preco <= valor
    end
  end

  def total
    @livros.size
  end

  def adiciona(livro)
    @livros << livro if livro
  end

  def << (livro)
    @livros << livro if livro
    self
  end

  def vende(livro)
    @livros.delete livro
    @vendas << livro
  end

  def maximo_necessario
    @livros.maximo_necessario
  end

  #def livro_que_mais_vendeu_por(&campo)
   # @vendas.sort {|v1,v2| quantidade_de_vendas_por(v1, &campo) <=> quantidade_de_vendas_por(v2, &campo)}.last
  #end

  #Para deixar mais generico, vamos passar um lambda (&:titulo) ao metodo que_mais_vendeu_por
  def livro_que_mais_vendeu_por_titulo
    que_mais_vendeu_por("livro",&:titulo)
  end

  def livro_que_mais_vendeu_por &campo
    que_mais_vendeu_por("livro",&campo)
  end


  def revista_que_mais_vendeu_por &campo
    que_mais_vendeu_por("revista", &campo)
  end


  def que_mais_vendeu_por(tipo, &campo)
    @vendas.select { | produto | produto.matches?(tipo)}.sort {|v1,v2| quantidade_de_vendas_por(v1, &campo) <=> quantidade_de_vendas_por(v2, &campo)}.last
  end

  #CALL
  def quantidade_de_vendas_por(produto, &campo)
    @vendas.count { |venda|
      #lambida que devolve nome
      #puts campo.call(venda)
      return campo.call(venda) == campo.call(produto)
    }
  end

  def method_missing(name)
    matcher = name.to_s.match "(.+)_que_mais_vendeu_por_(.+)"

    if matcher
      tipo = matcher[1]
      campo = matcher[2].to_sym  #pois precisamos converter para simbolo
      que_mais_vendeu_por(tipo, &campo)
    else
      super
    end
  end

  def respond_to?(name)
    matched = name.to_s.match("(.+)_que_mais_vendeu_por_(.+)")
    !!matched || super
  end
end