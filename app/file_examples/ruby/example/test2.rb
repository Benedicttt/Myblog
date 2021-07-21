# test2.rb

module TestingFrameWork
  class FirstTest
    def open_page
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
  end
end
