# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium-webdriver'
require_relative 'helper.rb'
require 'httparty'

World(Helper)

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

case ENV['BROWSER']
when 'firefox'
  @driver = :selenium
when 'chrome'
  @driver = :selenium_chrome
when 'headless'
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument '--headless'
      options.add_argument '--disable-gpu'
      options.add_argument '--no-sandbox'
      options.add_argument '--disable-site-isolation-trials'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
else
  puts 'Invalid browser'
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG['url_padrao']
  config.default_max_wait_time = 15
end
