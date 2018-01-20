
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/rspec/matcher_proxies'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'
require 'allure-cucumber'

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/qua.yaml")

Capybara.configure do |c|
    c.default_driver = :selenium_chrome_headless
    c.app_host = DATA['url']
end

include AllureCucumber::DSL

AllureCucumber.configure do |c|
    c.output_dir = 'results'
end