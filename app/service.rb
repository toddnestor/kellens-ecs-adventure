# coding: utf-8
# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

module EmptySinatra
  # Endpoints for the file upload service
  class Service < Sinatra::Base
    attr_accessor :user

    configure :development do
      register Sinatra::Reloader

      Dir.glob('app/**/*.rb').each do |file|
        also_reload(file) unless file == 'app/service.rb'
      end

      enable :cross_origin
    end

    before do
      response.headers['Access-Control-Allow-Origin'] = '*'
    end

    options '*' do
      response.headers['Allow'] = 'GET, PUT, POST, DELETE, OPTIONS'
      response.headers['Access-Control-Allow-Headers'] = 'Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token'
      response.headers['Access-Control-Allow-Origin'] = '*'
      200
    end

    get '/' do
      '🎉🎉🎉'
    end

    get '/healthcheck' do
      [200, 'healthy']
    end
  end
end
