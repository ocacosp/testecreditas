#sobe em memória as Gems informadas
require 'rspec'
require 'page-object'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'data_magic'
require 'pry'
require 'site_prism'
require 'require_all'
require 'httparty'

#Configurando o ddriver Capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando as configurações do deiver como padrão
Capybara.default_driver = :selenium

#Caximizar a tela ao iniciar o teste
Capybara.current_session.current_window.maximize

#Timeout padrão na execução
Capybara.default_max_wait_time = 5