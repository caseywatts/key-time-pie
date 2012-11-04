source 'https://rubygems.org'
gem 'rails', '3.2.7'
group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem "thin", ">= 1.5.0"
gem "factory_girl_rails", ">= 4.1.0", :group => [:development, :test]
gem "twitter-bootstrap-rails", :group => :assets
gem "therubyracer", ">= 0.10.2", :group => :assets, :platform => :ruby
gem "omniauth"
gem "omniauth-google-oauth2"
gem "simple_form"
gem "quiet_assets", ">= 1.0.1", :group => :development
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]

group :development do
  gem 'guard'
  gem 'guard-livereload'
  gem 'yajl-ruby'
end

gem "heroku"
gem "cocoon"
gem "highcharts-rails"
gem "gon"
