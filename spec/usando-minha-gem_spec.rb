require_relative '../usando-minha-gem'


describe "UsandoMinhaGem" do
	it "deve retornar o valor default (hello world)" do
		u = UsandoMinhaGem.new
		expect(u.oi).to eql("hello world")
  	end 

  	it "deve retornar o valor em portugues" do
		u = UsandoMinhaGem.new
		expect(u.oi("pt-BR")).to eql("Olá Mundo Ruby o/!")
  	end 
end