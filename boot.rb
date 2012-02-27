require 'rubygems'
require 'bundler'

ENV['RACK_ENV'] ||= 'development'

Bundler.require :default, ENV['RACK_ENV']

Mongoid.logger = nil
Mongoid.load! 'config/mongoid.yml', ENV['RACK_ENV']

require './message'
require './channel'
