class Install::FedoraController < ApplicationController
  def fedora_ruby
    render "install/fedora/ruby.js"
  end

  def fedora_js
    render "install/fedora/js.js"
  end

  def fedora_java
    render "install/fedora/java.js"
  end
end
