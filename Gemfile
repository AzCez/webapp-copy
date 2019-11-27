source 'https://rubygems.org'
ruby '2.6.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bootsnap', require: false
gem 'devise'
gem 'jbuilder', '~> 2.0'
gem 'pg', '~> 0.21'
gem 'puma'
gem 'rails', '5.2.3'
gem 'redis'
gem 'omniauth', '~> 1.6'
gem 'omniauth-facebook', '~> 4.0'

gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'sassc-rails'
gem 'simple_form'
gem 'uglifier'

#DESIGN
gem 'webpacker'
gem 'coffee-rails', '~> 4.2'

#IMAGES
gem 'mini_magick'
gem 'carrierwave', '~> 2.0'

#EMAIL
gem 'postmark-rails'

#SEARCH
gem 'ransack', github: 'activerecord-hackery/ransack'

#MAPS
gem 'geocoder'
gem 'mapbox-sdk'

#AWS
gem 'fog-aws'
# gem 'carrierwave-aws'

#Savon for soap requests
gem 'savon'

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'dotenv-rails'
#test action mailer
  gem 'letter_opener'
end
