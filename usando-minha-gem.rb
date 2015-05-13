#Importando minha Gem
require 'ola-mundo-novo'

def oi(language = "english")
  Hello.hi(language)
end

#puts Hello.hi "pt-BR"

puts oi "pt-BR"