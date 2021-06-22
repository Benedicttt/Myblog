class MainPageController < ApplicationController
  def index
    respond_to do |format|
      format.html { render :text => 'this is html' }
      format.js  { render :text => 'this is js' }
    end
  end
end
