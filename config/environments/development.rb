BcwRails::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Mailer configuration
  config.action_mailer.delivery_method = :sendmail
  # Defaults to:
  # config.action_mailer.sendmail_settings = {
  #   :location => '/usr/sbin/sendmail',
  #   :arguments => '-i -t'
  # }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  # ww catalog configs
  config.ww_catalog_review_hostname = 'http://staging.eventwire.com'

  # ww api configs
  #config.ww_api_host = 'brendan.weddingwire.com'
  config.ww_api_host = 'staging.weddingwire.com'
  #config.ww_static = 'brendan.weddingwire.com:81/static'
  config.ww_static = 'staging-static.weddingwire.com/static'

  # fb api configs
  config.fb_app_id = '270635429631224'
  config.fb_app_secret = 'c0931be8d5c5fe76f9ecbe738a632f93'

  config.application_hostname = 'http://localhost:3000'

  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

end
