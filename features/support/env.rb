require 'rspec'
require 'pry'
require 'faker'
require 'appium_lib'
require 'selenium-webdriver'
require 'cucumber'
require 'appium_lib'
require 'page-object'


Dir[File.join(File.dirname(__FILE__),'../support/*_helper.rb')].each { |file| require file }
 World(Screens)
#World(PageObject::Screens)

device = ENV['DEVICE'] || 'Nexus'

base = ENV['EMULADOR'] || 'true'

if base == 'true'
    base_config = YAML.load_file('./config/emulator.yaml')['emulators'][device]
else
    base_config = YAML.load_file('./config/devices.yaml')['devices'][device]
end    


#Executar o Driver Appium:
Appium::Driver.new(base_config)
Appium.promote_appium_methods Object

