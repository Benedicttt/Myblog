class MainPageController < ApplicationController
  def index
    params[:locale] = I18n.default_locale if params[:locale].nil?
    render "main_page/index"
  end

  def refresh
    render "main_page/main_page"
  end
end
