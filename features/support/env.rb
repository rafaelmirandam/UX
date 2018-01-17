
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/rspec/matcher_proxies'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENVIRONMENT_TYPE}.yaml")

Capybara.configure do |c|
    c.default_driver = :selenium_chrome_headless
    c.app_host = DATA['url']
end

include AllureCucumber::DSL

AllureCucumber.configure do |c|
    c.output_dir = 'results'
end