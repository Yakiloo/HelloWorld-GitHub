#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'

set :app_file, __FILE__
set :root, File.expand_path(File.dirname(__FILE__))

# Workaround to fix an issue between Sinatra 1.0 and ruby 1.9.2
# Skipped when app is not launched directly
#enable :run if $0.eql?(__FILE__)
disable :run

configure :development do
  use Rack::Reloader
end

require_relative '../lib/server/services/say'