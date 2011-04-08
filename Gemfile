# A sample Gemfile
source "http://rubygems.org"

group :development do
  gem "rspec"
  gem "cucumber"
  gem "ZenTest"
  gem "ci_reporter"
  gem "headless"
end

if RUBY_PLATFORM =~ /darwin/
 group :osx do
    gem "autotest-growl", :require => false
    gem "autotest-fsevent", :require => false
  end
end
