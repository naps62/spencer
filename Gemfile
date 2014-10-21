source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.0.4'
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jbuilder', '~> 1.2'
gem 'pry-rails'
gem 'foreman'

gem 'money-rails'
gem 'acts-as-taggable-on', '~> 3.4'

gem 'bower-rails'
gem 'angular-rails-templates'

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem 'rails_serve_static_assets'
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end
