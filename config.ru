$LOAD_PATH.unshift(File.dirname(__FILE__))

# prepare the environment
ENV['RACK_ENV'] ||= 'development'

# get rollin'
Bundler.require :default

Mongoid.configure do |config|
  config.clients.default = {
    hosts: [ENV['DATABASE_SERVICE_NAME']],
    database: ENV['MONGODB_DATABASE'],
    user: ENV['MONGODB_USER'],
    password: ENV['MONGODB_PASSWORD'],
  }

  config.log_level = :warn
end

# load the commands
require 'commands/salute'



# mongodb://[username:password@]host1[:port1][,...hostN[:portN]][/[database][?options]]
# mongodb://mongodb0.example.com:27017/admin

#puts "DB -> '#{ENV['MONGODB_DATABASE']}'"
#puts "URI -> '#{ENV['MONGODB_URL']}'"


#Mongoid.load!(File.expand_path('config/mongoid.yml', __dir__), ENV['RACK_ENV'])

# init the server
SlackRubyBotServer::App.instance.prepare!
SlackRubyBotServer::Service.start!

# start the server
run SlackRubyBotServer::Api::Middleware.instance
