# test1.rb

require 'chromedriver/helper'
require 'selenium-webdriver'

module TestingFrameWork #replace_comment0
  class FirstTest
    def initialize
      @driver = Selenium::WebDriver.for :chrome
      @driver.manage.timeouts.implicit_wait = 10

      puts "Driver called"
    end
  end
end