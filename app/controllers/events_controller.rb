class EventsController < ApplicationController
  def index
    @page = (params[:page].present?)?params[:page] : 1
    @events = WeddingWire::Api::Catalog.events_fetch(session[:current_region], nil, 1, {:types => [{:api_string => "bridalshow"}]})
    @max_page = @events[:max_pages]
    @events = @events[:events]
  end
end
