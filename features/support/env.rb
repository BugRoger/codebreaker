$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
require 'codebreaker'
require 'capybara' 
require 'capybara/cucumber'
require 'capybara/dsl' 


if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
end


Capybara.default_driver = :selenium 
Capybara.app_host = 'http://www.google.com' 
