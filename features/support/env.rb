require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'rspec'
require 'rails'
require 'cpf_faker'
require 'capybara/poltergeist'

Dir[File.dirname(__FILE__) + '/../helpers/*.rb'].each { |f| require f }
include SiteHelpers

if ENV['FIREFOX']
  puts " ================================= "
  puts " = Execution Firefox = "
  puts " ================================= "
  Capybara.default_driver = :selenium
  Capybara.default_max_wait_time = 10
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
      app,
      :browser => :firefox
    )
  end
  Capybara.page.driver.browser.manage.window.maximize

elsif ENV['CHROME']
  puts " ========================= "
  puts " = Execution Chrome = "
  puts " ========================= "
  Capybara.default_max_wait_time = 10
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  Capybara.default_driver = :selenium_chrome
  Capybara.javascript_driver = :chrome

else ENV['POLTERGEIST']
  puts " ========================= "
  puts " = Execution Poltergeist = "
  puts " ========================= "
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
      inspector: true,
      js_errors: false,
      window_size: [1280, 1024],
      phantomjs_options: ['--ignore-ssl-errors=yes','--ssl-protocol=tlsv1'],
      debug: false
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
  Capybara.ignore_hidden_elements = true
end

Capybara.default_selector = :css
