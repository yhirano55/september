source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4"

gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "bootsnap", require: false
gem "good_job", "~> 3.5"
gem "view_component", "~> 2.74"
gem "lookbook"
gem "primer_view_components", require: "primer/view_components/engine"

group :development, :test do
  gem "debug"
  gem "standard"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
end

group :test do
  gem "capybara"
end
