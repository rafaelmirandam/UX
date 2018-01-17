
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/rspec/matcher_proxies'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'


Capybara.configure do |c|
    c.default_driver = :selenium_chrome_headless
    c.app_host = 'http://qua.ux.linx.com.br/Application/5.X'
end

include AllureCucumber::DSL

AllureCucumber.configure do |c|
    c.output_dir = "allure"
end