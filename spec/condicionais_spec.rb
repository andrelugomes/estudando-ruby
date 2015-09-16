require 'spec_helper'

describe "Condicionais" do 

	it "deve fazer o if" do
		condicao = 1
		if condicao == 1
			condicao += 1
		end

		expect(condicao).to eq(2)
	end

	it "deve fazer o else" do
		condicao = 2
		if condicao == 1
			condicao += 1
		else
			condicao -= 1
		end

		expect(condicao).to eq(1)
	end

	it "deve fazer o elseif" do
		condicao = 3
		if condicao == 1
			condicao += 1
		elsif
			condicao = 0
		else
			condicao -= 1
		end

		expect(condicao).to eq(0)
	end
	
	it "deve fazer o if no final" do
		condicao = 3 
		valor = 2 if condicao == 3
		
		expect(valor).to eq(2)
	end

	it "deve testar o unless, dizendo 'a menos que...'" do
		condicao = 3 
		valor = 2 unless condicao > 3
		
		expect(valor).to eq(2)
	end

end
