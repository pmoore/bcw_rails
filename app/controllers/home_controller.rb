class HomeController < ApplicationController
  before_filter :get_location
  before_filter :prepare_sidebar


  def index
    @categories = Category.where(:active => true)
  end


end
