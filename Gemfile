source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record

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

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'haml-rails'
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'select2-rails'
gem 'simple_form'
gem 'bootstrap-will_paginate'
gem 'font-awesome-sass'
gem 'mail_form'
gem 'devise', '>= 3.5.2'
gem 'disqus_rails'
gem 'will_paginate-bootstrap'
gem 'social-share-button'
gem 'd3_rails'
gem 'aws-sdk', '>= 2.0.34'


gem 'cancancan'
gem 'rails_admin'
gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"
gem 'will_paginate', '~> 3.1.0'
gem 'sitemap_generator'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'letter_opener'
  gem 'rspec-rails'
end
gem 'figaro'
gem 'puma'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
  gem 'sqlite3'
end

group :test do
  gem 'factory_girl_rails',:require => false
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'poltergeist'
  gem 'rspec-instafail', require: false
  platforms :mswin, :mingw, :x64_mingw do
    # patched release to fix issues with project path names on Win32
    gem 'cliver', github: 'yaauie/cliver', ref: '5617ce'
  end
  gem 'database_cleaner'
  gem 'launchy'
  gem 'simplecov'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
