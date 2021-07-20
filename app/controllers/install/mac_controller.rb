class Install::MacController < ApplicationController
  def mac_ruby
    render "install/mac/ruby.js"
  end

  def mac_js
    render "install/mac/js.js"
  end

  def mac_java
    render "install/mac/java.js"
  end
end
