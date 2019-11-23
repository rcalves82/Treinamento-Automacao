require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5
  #   config.app_host = 'file:///home/rodrigoclarindo/Documentos/Treinamento-Automacao/index.html'
  Capybara.page.driver.browser.manage.window.maximize
end
