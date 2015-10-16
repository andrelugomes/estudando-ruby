# Estudo de Ruby
Projetinho com alguns arquivos de testes de Ruby...

# Notas

## IRB
Interpretador para testes rápidos:

Caso apresenta probelmas com setsa e backspace iniciar com : irb --noreadline

http://stackoverflow.com/questions/5660209/backspace-and-arrow-keys-arent-working-in-irbgit-bash-console-on-windows-mach

## Execuntando um arquivo Ruby

PATH_To_FILE/ruby file.rb

# Criando minha própria gem

Para treinar a criação de gem, segui o tutorial do site RubyGem : http://guides.rubygems.org/make-your-own-gem/
A gem criada esta no diretório minha-gem;

Publicado => https://rubygems.org/gems/ola-mundo-novo


# Usando a Gem
bundle init para criar um GemFile
caso a instalação seja com Bundler. bundle exec rspec spec

## Executando os testes
rspec spec_file.rb   ou   rspec

# Cobertura de Código

Para cobertuda de código, estou unsa do o simplecov. Uma Gem para cobertuda de código.

```console
gem 'simplecov'
```

Siga as instruções no [Github](https://github.com/colszowka/simplecov) colocando no spec_helper.rb:

```console
require 'simplecov'
SimpleCov.start
```
Rode os testes e abra o arquivo cobertura/index.html


