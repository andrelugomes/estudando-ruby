require 'spec_helper'

describe "Interações" do 

	it "deve fazer um while" do
		condicao = 0
		while condicao < 10
			condicao += 1
		end

		expect(condicao).to eq(10)
	end

	it "deve fazer um for" do
		condicao = 0
		#6 interações
		for i in (0..5)
			condicao += 1
		end

		expect(condicao).to eq(6)
	end

	it "deve fazer um for com break" do
		condicao = 0
		#5 interações
		for i in (0..5)
			break if i ==5
			condicao += 1
		end

		expect(condicao).to eq(5)
	end


	it "deve fazer um for com next" do
		condicao = 0
		#4 interações - next pula o for para o proximo incremento
		for i in (0..5)
			next if i > 3
			condicao += 1
		end

		expect(condicao).to eq(4)
	end

	it "deve fazer um loop com until, 'ate que'" do
		condicao = 0
		until condicao ==5
			condicao += 1
		end

		expect(condicao).to eq(5)
	end
	

end
