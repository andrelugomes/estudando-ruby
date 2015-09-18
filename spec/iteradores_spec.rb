require 'spec_helper'

describe "Iteradores" do 

	it "deve fazer each em um array" do
		array = [1,2,3]
		achei = 0
		array.each { |i| 
			puts "o array possui numero #{i}"
			achei = 1 if i > 0
		}
		expect(achei).to eq(1)
	end

	it "deve fazer each em um range" do
		
		achei = 0
		(1..5).each { |i| 
			puts "o range possui numero #{i}"
			achei = 1 if i > 0
		}
		expect(achei).to eq(1)
	end

	it "deve fazer times em um inteiro" do
		
		achei = 0
		5.times { |i| 
			puts "#{i} vez"
			achei = 1 if i > 0
		}
		expect(achei).to eq(1)
	end

	it "deve fazer step em um range setando um intervalo na iteração" do
		resultado = []
		(1..10).step(2) { |i| 
			puts "o range possui numero #{i}"
			resultado.push(i)
		}
		expect(resultado).to eq([1,3,5,7,9])
	end
	
	

end
