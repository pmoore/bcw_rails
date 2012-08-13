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

  config.ww_api_host = 'staging-api.weddingwire.com'
  config.ww_api_partner_key = '7nudelte'
  config.ww_api_salt = '9e71eb9fe2afa9f7fcc402ef2ddad74b'
  config.ww_catalog_api_partner_key = '08qx13n8'
  config.ww_catalog_api_salt = '6ab3d0c2d35617eb08261e12e0a79985'
  config.ww_storefront_302 = 'http://localhost:3000'
  # email direct
  config.email_direct_key = 'a2ebc678-4670-49f2-a1cf-932e4914a019'

  # FB Configuration
  config.fb_app_id = '185702801552994'

  # GA
  config.ga_account_id_web = 'MO-692627-66'
  config.ga_account_id_iphone = 'MO-692627-89'
  config.ga_account_id_android = 'MO-692627-88'
  config.ga_domain_name = '.weddingwire.com'

  config.application_hostname = 'http://localhost:3000'

  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

end
