ENV['RACK_ENV'] = 'test'

require File.dirname(__FILE__)+'./../boot'
require File.dirname(__FILE__)+'/../web'

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    Bot::Application
  end
end
