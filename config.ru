# Startfil för Rack

require 'bundler'
Bundler.require
require_relative 'config'
require_relative 'app'

App.set :static_cache_control, [:no_cache, :no_store, :must_revalidate]

run App