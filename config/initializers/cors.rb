# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors
# TODO Change this to final settings before deploying
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://tourmanager.herokuapp.com'
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             expose: %w[Authorization],
             max_age: 600
  end
end
