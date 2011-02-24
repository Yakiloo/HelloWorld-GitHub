ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'sinatra'
require 'rack'
require 'rspec'
require 'rack/test'

require_relative '../bin/app'

# set up test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

module Hello_World
  include Rack::Test::Methods
  def app 
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include Hello_World }