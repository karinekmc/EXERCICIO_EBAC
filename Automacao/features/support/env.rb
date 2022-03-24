
require 'Capybara'
require 'Cucumber'
require 'pry'
require 'selenium'


Selenium::WebDriver::Chrome.driver_path = "C:/chromedriver.exe"
Capybara.default_driver = :chrome
Capybara.default_max_wait_time = 5