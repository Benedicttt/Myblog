# runner.rb

require_relative 'test1.rb'
require_relative 'test2.rb'
require_relative 'test3.rb'

def example1
  first_test = TestingFrameWork::FirstTest.new
  first_test.open_page
  first_test.search_elem_and_click
  first_test.assertion
  first_test.close_browser
end

def example2
  include TestingFrameWork #replace_comment0

  first_test = FirstTest.new
  first_test.open_page
  first_test.search_elem_and_click
  first_test.assertion
  first_test.close_browser
end

example1
example2
