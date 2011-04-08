$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
require 'codebreaker'

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
end
