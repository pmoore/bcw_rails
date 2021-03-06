class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_location
  before_filter :prepare_sidebar


  def get_location
    @bcw_city_slug = request.domain.gsub('thebest', '').gsub('best','').gsub('weddings','').gsub('wedding','').gsub('.com','')
    @bcw_city_slug = 'dc'
    @bcw_city = BcwConstants::Cities.find_city_by_url_slug(@bcw_city_slug)

    #if session[:current_location].blank? || session[:current_location] != @bcw_city_slug || session[:breadcrumb_location].blank?
      begin
        results = WeddingWire::Api::Catalog.region_fetch(@bcw_city_slug)
        session[:current_location] = @bcw_city_slug
        session[:current_region] = results[:region_code]
        session[:breadcrumb_location] = @bcw_city[:name]
      rescue Exception => ae
        session[:current_location] = nil
        session[:current_region] = nil
        session[:current_region] = nil
      end
    #end
  end

  def prepare_sidebar
    @sidebar_events = WeddingWire::Api::Catalog.events_fetch(session[:current_region], nil, 1, {:types => [{:api_string => "bridalshow"}]})
    @sidebar_events = @sidebar_events[:events]
  end
end
