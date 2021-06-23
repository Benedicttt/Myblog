class MainPageController < ApplicationController
  def index
    render "main_page/index"
  end

  def refresh
    render "main_page/main_page"
  end
end
