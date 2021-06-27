class Install::LinuxController < ApplicationController
  def linux_ruby
    render "install/linux/ruby.js"
  end

  def linux_js
    render "install/linux/js.js"
  end

  def linux_java
    render "install/linux/java.js"
  end
end
