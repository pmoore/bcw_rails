BcwRails::Application.routes.draw do
  get "events/index"

  get "home/index"

  root :to => "home#index"


  # Events
  resources :events, :path => "/:city_seo_string-bridal-shows"

  # Vendor Catalog

  #patterns
  page = /\d+/
  cat_seo_array = []
  begin
    Category.all_cached.each do |category|
      cat_seo_array << category.seo_string_actor_name_plural
    end
  rescue
    Rails.logger.error "category routes broken"
  end
  category = Regexp.new("(#{cat_seo_array.join('|')})")

  match '/:city_seo_string-wedding-vendors' => 'catalog#vendors', :as => 'vendors_landing', :event_type => 'weddings', :nav => 'vendors'
  match '/biz/:seo_string/:id(/:tab)(/:page)' => 'catalog#storefront', :as => 'vendor_storefront', :constraints => {:page => page}, :event_type => "weddings", :nav => "vendors"
  match '/c/:category/:location(/:page)' => 'catalog#list', :as => 'vendor_catalog', :constraints => {:page => page, :category => category}, :event_type => "weddings", :nav => "vendors"
  match '/vendors(/:location)', :to => "catalog#vendors", :as => 'vendor_landing', :event_type => "weddings", :nav => "vendors"


end
