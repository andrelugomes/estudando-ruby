class Translator
  def initialize(language)
    @language = language
  end

  def hi
    case @language
    when "pt-BR"
      "Olá Mundo Ruby o/!"
    else
      "hello world"
    end
  end 
end