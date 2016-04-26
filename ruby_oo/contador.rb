module Contador
  #Um módulo define parte do comportamento de um objeto
  attr_reader :maximo_necessario
  def << (livro)
    push (livro)
    if @maximo_necessario.nil? || @maximo_necessario < size
      @maximo_necessario = size
    end
    self
  end

  def maximo_necessario
    @maximo_necessario
  end

  def string_para_alfanumerico(nome)
    nome.gsub /[^\w\s]/,''
  end
end