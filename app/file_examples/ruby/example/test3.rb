# test3.rb

module TestingFrameWork
  class FirstTest
    def assertion
      elements_article = @driver.find_elements(css: '.g')

      if 10 == elements_article.size
        puts "Found 10 elements"
      else
        raise "Test failed, not found 10 elements"
      end
    end

    def close_browser
      @driver.close
    end
  end
end