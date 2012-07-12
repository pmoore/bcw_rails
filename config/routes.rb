BcwRails::Application.routes.draw do
  get "home/index"

  root :to => "home#index", :city_url_slug => "dc"

end
