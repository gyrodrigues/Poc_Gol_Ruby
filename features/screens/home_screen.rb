

class HomeScreen < BasicScreen

  def initialize
    @minha_conta_txt = 'Minha conta'
  end

  def acessar_home
    element_exist @minha_conta_txt
    click_element_text @minha_conta_txt
  end

end