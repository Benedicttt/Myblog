class InstallController < ApplicationController
  def windows
    render "install/windows.js"
  end

  def linux
    render "install/linux.js"
  end

  def mac
    render "install/mac.js"
  end

  def fedora
    render "install/fedora.js"
  end
end
