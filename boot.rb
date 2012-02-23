require 'rubygems'
require 'bundler'

Bundler.require :default

ENV['RACK_ENV'] ||= 'development'

Mongoid.logger = nil
begin
  Mongoid.load!('config/mongoid.yml')
rescue
  require './heroku'
end

require './message'
require './channel'
