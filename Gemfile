source 'https://rubygems.org'

# begin Custom gems
gem 'bcrypt'
gem 'faker',                   '1.6.1'
gem 'carrierwave',             '0.10.0'
gem 'mini_magick',             '~> 4.4'
gem 'fog',                     '~> 1.37'
gem 'will_paginate',           '~> 3.1'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'bootstrap-sass',          '3.3.6'

# end Custom gems

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc


group :development do
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'pg'
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  gem 'rails_12factor'
  gem 'puma',        '3.4.0'
end

group :development, :test do
  gem 'byebug',      '8.2.2'
  gem 'spring',      '1.1.3'
end

group :development, :production do
  gem 'pg'
  gem 'puma',        '3.4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
