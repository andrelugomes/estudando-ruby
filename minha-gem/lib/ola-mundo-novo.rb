class Hello
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
end

#Like import
require 'ola-mundo-novo/translator'