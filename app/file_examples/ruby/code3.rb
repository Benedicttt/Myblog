require 'chromedriver/helper'
require 'selenium-webdriver'

class FirstTest # replace_comment0
  def initialize # replace_comment1
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 10

    puts "Driver called"
  end

  def open_page # replace_comment2
    @driver.get "https://google.com"

    puts "Driver get to page"
  end

  def search_elem_and_click
    field_search = @driver.find_element(css: ".gLFyf.gsfi")
    button_search = @driver.find_element(css: ".gNO89b")

    puts "Driver search elements"

    field_search.send_keys("ruby selenium")
    button_search.click()

    puts "Driver send keys to input and click button element"
  end

  def sleeping
    sleep 2
    puts "sleeping 2 seconds"
  end

  def assertion
    # replace_comment3
    elements_article = @driver.find_elements(css: '.g')

    # replace_comment4
    if 10 == elements_article.size
      puts "Found 10 elements"
    else
      raise "Test failed, not found 10 elements" # replace_comment5
    end
  end

  # replace_comment6
  def self.run
    test = FirstTest.new
    test.open_page
    test.search_elem_and_click
    test.sleeping
    test.assertion
  end
end

FirstTest.run # replace_comment7
