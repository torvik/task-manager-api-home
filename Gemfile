source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.4'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.6'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner', '~> 1.6', '>= 1.6.1'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'faker', '~> 1.8', '>= 1.8.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
