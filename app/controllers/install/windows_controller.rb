class Install::WindowsController < ApplicationController
  def win_ruby
    render "install/windows/ruby.js"
  end

  def win_js
    render "install/windows/js.js"
  end

  def win_java
    render "install/windows/java.js"
  end
end
