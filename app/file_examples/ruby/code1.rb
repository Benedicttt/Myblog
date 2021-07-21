require 'chromedriver/helper'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome # replace_comment0
driver.get "https://google.com" # replace_comment1

sleep 10 # replace_comment2