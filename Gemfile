source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.4"

# Use Rails 7.0.7 for your application
gem "rails", "~> 7.0.7", ">= 7.0.7.2"

# Use PostgreSQL as the database for Active Record
gem "pg", "~> 1.1"

# Use Puma as the web server
gem "puma", "~> 5.0"

# Build JSON APIs with ease (optional, uncomment if needed)
# gem "jbuilder"

# Use Redis adapter for Action Cable in production (optional, uncomment if needed)
# gem "redis", "~> 4.0"

# Use Kredis for higher-level data types in Redis (optional, uncomment if needed)
# gem "kredis"

# Use Active Model has_secure_password (optional, uncomment if needed)
# gem "bcrypt", "~> 3.1.7"

# Bundle tzinfo-data for Windows and JRuby compatibility
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching
gem "bootsnap", require: false

# Use Active Storage variants (optional, uncomment if needed)
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (optional, uncomment if needed)
# gem "rack-cors"

# Add Kaminari for pagination
gem "kaminari"

group :development, :test do
  # Use RSpec for testing
  gem "rspec-rails", "~> 5.0"

  # Use FactoryBot for fixtures replacement
  gem "factory_bot_rails", "~> 6.0"

  # Use Faker for generating test data
  gem "faker", "~> 2.20"

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Speed up commands on slow machines or big apps (optional, uncomment if needed)
  # gem "spring"
end

group :production do
  # Use the `rails_12factor` gem for Heroku deployment (optional, uncomment if deploying to Heroku)
  # gem "rails_12factor"
end
