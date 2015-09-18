require 'spec_helper'

describe "Procs e Lambdas" do 

	it "deve execurar um Proc com metodo call" do
		#Proc pode executar um bloco de código e grardar em uma vriável
		proc = Proc.new {|valor| valor*3}

		expect(proc.call(2)).to eq(6)
	end

	it "deve execurar um Proc com atalho" do
		proc = Proc.new {|valor| valor*3}

		#Atalho []
		expect(proc[2]).to eq(6)

		#Atalho .()
		expect(proc.(2)).to eq(6)
	end

	it "deve passar uma Proc como bloco" do
		multiplica_por_2 = Proc.new {|valor| valor*2}

		#usar o & para passar a Proc como bloco
		#(1..5).map faz um array [1,2,3,4,5]
		teste = (1..5).map &multiplica_por_2
		expect(teste).to eq([2,4,6,8,10])
	end

	it "deve demonstrar uma stabby Proc" do
		proc = -> valor {valor*3}
		expect(proc.call(2)).to eq(6)
	end

	it "deve execurar um Lambda com metodo call" do
		#Proc pode executar um bloco de código e grardar em uma vriável
		lam = lambda {|valor| valor*3}

		expect(lam.call(2)).to eq(6)
	end

	it "deve execurar um Lambda dentro de outro" do
		lam = lambda {|x| lambda {|y| x*y}}

		expect(lam.(2).(3)).to eq(6)
	end

	it "deve execurar um Lambda com mais de um valor" do
		lam = lambda {|x,y| x*y}

		expect(lam.(2,3)).to eq(6)
	end

	it "deve execurar um Lambda fixando os parametros com curry" do
		lam = lambda {|x,y| x*y}.curry

		#vai passar 2 para x  e y
		dobro = lam.(2)
		expect(dobro.(8)).to eq(16)
	end
end
