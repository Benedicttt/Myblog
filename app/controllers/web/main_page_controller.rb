class Web::MainPageController < ApplicationController
  def gui
    render "web/index.js"
  end
end
