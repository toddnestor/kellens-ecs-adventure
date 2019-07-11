# frozen_string_literal: true

require 'bundler/setup'
require_relative 'app/service'

require 'ddtrace'

Datadog.configure do |c|
  c.use :sinatra, service_name: 'empty-sinatra'
end

EmptySinatra::Service.set :root, ::File.dirname(__FILE__)

EmptySinatra::Service.configure do
  EmptySinatra::Service.enable :logging
  file = File.new("#{EmptySinatra::Service.settings.root}/log/#{EmptySinatra::Service.settings.environment}.log", 'a+')
  file.sync = true
  use Rack::CommonLogger, file
end

run EmptySinatra::Service
