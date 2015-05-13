#Importando minha Gem
require 'ola-mundo-novo'

class UsandoMinhaGem
	def oi(language = "english")
  		Hello.hi(language)
	end
end
#puts Hello.hi "pt-BR"
u = UsandoMinhaGem.new
puts u.oi "pt-BR"