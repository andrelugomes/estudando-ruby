require 'spec_helper'

describe Hash do
  
  before do
    #Jeito velho
    #@hash = Hash.new({:hello => 'world'})

    #Jeito Novo
    @hash = {hello: 'world'}
  end
 
  it "deve retornar meu Hash" do
    hash = HashTests.new

    #Printing
    puts hash.hashDeNomes

    expect(hash.hashDeNomes.size).to eq(4)
  end
 
  it "deve recuperar o valor pela chame ':hello'" do
    expect(@hash[:hello]).to eq('world')
  end
end