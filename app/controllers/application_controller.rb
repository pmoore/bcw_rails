class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_location


  def get_location
    if session[:current_location].blank?
      begin
        results = WeddingWire::Api::Catalog.region_fetch("washingtondc")
        session[:current_location] = params[:city_url_slug]
        session[:current_region] = results[:region_code]
      rescue Exception => ae
        session[:current_location] = nil
        session[:current_region] = nil
      end
    end
  end

  def prepare_sidebar
    @events = WeddingWire::Api::Catalog.events_fetch(session[:current_region], nil, 1, {:types => [{:api_string => "bridalshow"}]})
  end
end
