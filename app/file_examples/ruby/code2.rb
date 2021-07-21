require 'chromedriver/helper'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10 # replace_comment0

driver.get "https://google.com"

field_search = driver.find_element(css: ".gLFyf.gsfi") # replace_comment1
button_search = driver.find_element(css: ".gNO89b")

field_search.send_keys("ruby selenium") # replace_comment2
button_search.click() # replace_comment3


sleep 10