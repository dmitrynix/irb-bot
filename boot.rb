require 'rubygems'
require 'bundler'

Bundler.require :default

ENV['RACK_ENV'] ||= 'development'

Mongoid.load!('config/mongoid.yml')
Mongoid.logger = nil

require './message'
