class BasicScreen

  def hide_keyboard_action
     if is_keyboard_shown == true
       hide_keyboard
     end
  end

  def back_click
    back
  end

  def scroll_location(element)
    driver.scrollTo(element)
  end

  def wait_for_id(id, timeout = 10)
    @driver.wait_true(timeout) do 
    @driver.exists { @driver.find_element(:id, id) }
    end
  end

  def click_id(id)
    @driver.find_element(:id, id).click
    hide_keyboard_action
  rescue => e
    raise "Erro ao clicar no elemento: #{element}.\nErro: #{e.message}"
  end

  def send_keys(xpath, value)
    @driver.find_element(:xpath, xpath).send_keys(value)
  end

  def click_element_text(element, time_out=5)
    text(element).click
    hide_keyboard_action
  rescue => e
    raise "Erro ao clicar no elemento: #{element}.\nErro: #{e.message}"
  end

  def click_xpath(xpath)
    @driver.find_element(:xpath, xpath).click
  end

  # wait_for_element(id: @contato,:timeout => 5)
def wait_for_element(atributos)
  begin
      wait = Selenium::WebDriver::Wait.new 
      wait.until { find_element(atributos).displayed? }
  rescue Selenium::WebDriver::Error::TimeOutError => e
    raise "Não encontrou resultado da busca \n #{e.message}"
  end
end


def wait_for_click(atributos)
  begin
      wait = Selenium::WebDriver::Wait.new :timeout => 5
      wait { find_element(atributos).click }
  rescue Selenium::WebDriver::Error::TimeOutError => e
      raise "Não consegui efetuar a ação \n #{e.message}"
  end
end

def reinstall_apps
@driver.reset
end

# element_exist(id: @contato,:timeout => 5)
def element_exist(attribute)
  begin
      wait = Selenium::WebDriver::Wait.new :timeout => 5
      wait.until { find_element(attribute).displayed? }
    rescue 
      return false
    end
end

def find_element(element)
    wait = Selenium::WebDriver::Wait.new :timeout => 20
    wait.until { driver.find_element(element).displayed? }
    return element
  rescue => e
    raise "Não foi possível encontrar o campo: #{element}!\nErro: #{e.message}"
  end

  def fill_text_field(element, text, time_out=5)
    text(element).click
    text(element).send_keys(text)
    hide_keyboard_action
  rescue => e
    raise "Erro ao preencher campo #{element}.\nErro: #{e.message}"
  end

 def selecionar_data
  
driver.findElement (By.xpath ("[@content-desc = ' 13/02/2018']"));
 end
end

