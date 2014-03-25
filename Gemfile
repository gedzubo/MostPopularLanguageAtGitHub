source 'https://rubygems.org'

ruby '2.1.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use SCSS for stylesheets
# Read more: https://github.com/rails/sass-rails
gem 'sass-rails', '~> 4.0.1'

# Use Compass for stylesheets
# Read more: https://github.com/Compass/compass-rails
gem 'compass-rails'

# Foundation
# Read more: https://github.com/zurb/foundation-rails
gem 'foundation-rails'

# Use Uglifier as compressor for JavaScript assets
# Read more: https://github.com/lautis/uglifier
gem 'uglifier', '~> 2.4.0'

# Rack HTTP server for fast clients and Unix
# For Heroku
# Read more: https://github.com/defunkt/unicorn
gem 'unicorn'

# Run multiple tasks. Run server, other libraries, etc.
# Red more: https://github.com/ddollar/foreman
gem "foreman", "~> 0.63.0"


group :development, :test do
  # Testing framework
  # Read more: https://github.com/rspec/rspec-rails
  gem "rspec-rails", "~> 2.14.0"
  # factory_girl is a fixtures replacement with a straightforward definition syntax,
  # support for multiple build strategies (saved instances,
  # unsaved instances, attribute hashes, and stubbed objects),
  # and support for multiple factories for the same class (user, admin_user, and so on),
  #  including factory inheritance.
  # Read more: https://github.com/thoughtbot/factory_girl_rails
  gem "factory_girl_rails", "~> 4.4.1"
  # A library for generating fake data such as names, addresses, and phone numbers.
  # Read more: https://github.com/stympy/faker
  gem "faker", "~> 1.2.0"
end

group :test do
  # A library for generating fake data such as names, addresses, and phone numbers.
  # Read more: https://github.com/stympy/faker
  gem "faker", "~> 1.2.0"
  # Acceptance test framework for web applications
  # Read more: https://github.com/jnicklas/capybara
  gem "capybara", "~> 2.2.1"
  # Read more: https://github.com/bmabey/database_cleaner
  gem "database_cleaner", "~> 1.2.0"
end

group :production do
  # Makes running your Rails app easier
  # Read more: https://github.com/heroku/rails_12factor
  gem 'rails_12factor', '~> 0.0.2'
end