class Pessoa
  #Symbol é mais performatico
  attr :nome
  
  attr "idade"

  def initialize(nome, idade)
    @nome, @idade = nome, idade
  end
end

a = Pessoa.new("andre" , 30)

puts a.nome
puts a.idade