require 'spec_helper'

describe Hash do
  
  before do
    #Jeito velho
    #@hash = Hash.new({:hello => 'world'})

    #Jeito Novo
    @hash = {hello: 'world'}
  end

  it "deve recuperar o valor pela chame ':hello'" do
    expect(@hash[:hello]).to eq('world')
  end
 
  it "deve retornar meu Hash" do
    hash = HashTests.new

    expect(hash.hashDeNomes.size).to eq(4)
  end

  it "deve criar um Hash vazio e com valor default" do
  	#hash = Hash.new  -> {}

  	hash = Hash.new('default')

  	expect(hash.size).to eq(0)

	hash[:primeiro]
	hash[:segundo]
  	#Atribuindo o primeiro valor ao Has
  	expect(hash[:primeiro]).to eq("default")
  end
end
