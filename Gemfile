source 'https://rubygems.org'

# Specify your Ruby version
ruby '2.7.4'

# Rails version
gem "rails", "~> 7.1.3", ">= 7.1.3.4"

# PostgreSQL as the database
gem 'pg', '~> 1.2'

# Use Puma as the app server
gem 'puma', '~> 6.4', '>= 6.4.2'

gem 'rest-client'
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem "rack-cors"

# gem 'net-http'
# Use SCSS for stylesheets
# gem 'sass-rails', '>= 6'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'webpacker', '~> 5.0'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'cloudinary'
# Manage environment variables
gem 'dotenv-rails'

gem 'activerecord', '~> 7.0'
group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  # gem 'web-console', '>= 4.1.0'

  #Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Speed up development by keeping your application running in the background. Read more: https://github.com/guard/guard
  gem 'listen', '~> 3.3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Minitest framework
  gem 'minitest-rails'

  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
end

group :production do
  # Use a different cache store in production
  # gem 'memcache-client'

  # Use a real queuing backend for Active Job (and separate queues per environment)
  # gem 'sidekiq'

  # Use Active Storage variant
  # gem 'image_processing', '~> 1.2'
end

