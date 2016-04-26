require_relative 'livro'
require_relative 'revista'
require_relative 'ebook'
require_relative 'estoque'



def livro_para_newsletter(livro)
  if livro.ano_lancamento < 2000
    puts "Newsletter/Liquidacao"
    puts livro.titulo
    puts livro.preco
    puts livro.possui_reimpressao?
  end
end

estoque = Estoque.new
rails = Livro.new("Livro de Rails",40, 1999, true,"", true)
ruby = Livro.new("Livro de Ruby", 30, 2012, true, "", true)
programer = Livro.new("The Pragmatic Programmer", 100, 1999, true,"", true)
programing = Livro.new("Programming Ruby", 100, 2004, true,"", true)

revista = Revista.new("Revista", 10, 2016, true, "Editora", 3)

ebook = EBook.new("on line", 100, 2015, "")

estoque << rails << revista << revista
estoque << ruby << ruby << estoque
estoque.adiciona programer
estoque.adiciona  programing
estoque.vende ruby
estoque.vende ebook
estoque.vende revista
estoque.vende revista

#puts estoque.livro_que_mais_vendeu_por_titulo.titulo
#puts estoque.revista_que_mais_vendeu_por_titulo.titulo

#puts estoque.livro_que_mais_vendeu_por(&:titulo).titulo
#puts estoque.revista_que_mais_vendeu_por(&:titulo).titulo

#Meta Programming
puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo

