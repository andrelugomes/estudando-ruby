require 'spec_helper'

describe "Conversoes" do 

	it "deve converter inteiro" do
		expect(1.to_s).to eq('1')
		expect(1.to_f).to eq(1.0)
	end

	it "deve converter strings" do
		expect("1".to_i).to eq(1)
		expect("1".to_f).to eq(1.0)
	end

	it "deve converter para simbolos" do
		expect("azul".to_sym).to eq(:azul)
	end

	it "deve converter arrays" do
		expect([1,2,3,4,5].to_s).to eq("[1, 2, 3, 4, 5]")
		#COM DELIMITADOR
		expect([1,2,3,4,5].join(",")).to eq("1,2,3,4,5")
	end

	it "deve converter range para array" do
		expect((1..5).to_a).to eq([1, 2, 3, 4, 5])
	end

	it "deve converter hash para array" do
		expect({:um=>'1'}.to_a).to eq([[:um, '1']])
	end

end
