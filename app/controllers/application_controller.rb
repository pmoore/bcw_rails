class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_location


  def get_location
    @bcw_city_slug = request.domain.gsub('thebest', '').gsub('best','').gsub('weddings','').gsub('wedding','').gsub('.com','')
    @bcw_city_slug = 'dc'
    @bcw_city = BcwConstants::Cities.find_city_by_url_slug(@bcw_city_slug)

    if session[:current_location].blank? || session[:current_location] != @bcw_city_slug
      begin
        results = WeddingWire::Api::Catalog.region_fetch(@bcw_city_slug)
        session[:current_location] = @bcw_city_slug
        session[:current_region] = results[:region_code]
      rescue Exception => ae
        session[:current_location] = nil
        session[:current_region] = nil
      end
    end
  end

  def prepare_sidebar
    @events = WeddingWire::Api::Catalog.events_fetch(session[:current_region], nil, 1, {:types => [{:api_string => "bridalshow"}]})
    @events = @events[:events]
  end
end
