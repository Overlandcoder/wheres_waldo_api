# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://overlandcoder.github.io",
            "http://localhost:3001",
            "127.0.0.1:3001"

    resource "*",
      headers: :any,
      methods: [:get]
  end
end

Rails.application.config.hosts << "http://localhost:3001"
Rails.application.config.hosts << "https://wheres-waldo-service.onrender.com"
Rails.application.config.hosts << "wheres-waldo-service.onrender.com"
