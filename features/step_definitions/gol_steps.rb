Dado(/^que eu esteja na pagina de cadastro$/) do  
    home.acessar_home
    minha_conta.cadastrar_novo_usuario
  end
  
  Quando(/^preencho o formulario com os dados validos$/) do
    binding.pry
    cadastrar.preencher_cadastro('Roberto','Carlos')
  end
  
  Entao(/^faço login para verificar cadastro com sucesso$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end