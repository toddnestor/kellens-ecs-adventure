ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'
require 'minitest/unit'
require 'mocha/minitest'

require File.expand_path('../../app/service', __FILE__)

include Rack::Test::Methods

def app
  EmptySinatra::Service
end
