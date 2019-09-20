$LOAD_PATH.unshift(File.dirname(__FILE__))

ENV['RACK_ENV'] ||= 'development'

Bundler.require :default

require_relative 'commands'

puts "URI -> '#{MONGODB_URL}'"

Mongoid.load!(File.expand_path('config/mongoid.yml', __dir__), ENV['RACK_ENV'])

SlackRubyBotServer::App.instance.prepare!
SlackRubyBotServer::Service.start!

run SlackRubyBotServer::Api::Middleware.instance
