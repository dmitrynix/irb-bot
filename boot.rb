require 'rubygems'
require 'bundler'

Bundler.require :default

ENV['RACK_ENV'] ||= 'development'

Mongoid.logger = nil
Mongoid.load!('config/mongoid.yml')

require './message'
