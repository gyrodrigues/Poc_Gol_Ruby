
Dir[File.join(File.dirname(__FILE__),'../screens/*_screen.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Screens

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe base foi instanciada,se sim ela não irá fazer nada ,se não ela irá instanciar a classe.
  def base
    @base ||= BasicScreen.new
  end
  
#O método serve para que toda vez que chamar esse método ele vai verificar se a classe HomeScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.
  def home
    @home ||= HomeScreen.new
  end
# O método serve para que toda vez que chamar esse método ele vai verificar se a classe CadastroScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.
  def cadastrar
    @cadastrar ||= CadastroScreen.new
  end

  def minha_conta
    @minha_conta ||= MinhaConta.new
  end
end