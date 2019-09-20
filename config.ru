$LOAD_PATH.unshift(File.dirname(__FILE__))

# prepare the environment
ENV['RACK_ENV'] ||= 'development'

if ENV['MONGODB_USER'] 
  MONGODB_URL="mongodb://#{ENV['MONGODB_USER']}:#{ENV['MONGODB_PASSWORD']}@#{ENV['DATABASE_SERVICE_NAME']}/#{ENV['MONGODB_DATABASE']}"
else
  MONGODB_URL="mongodb://#{ENV['DATABASE_SERVICE_NAME']}/#{ENV['MONGODB_DATABASE']}"
end


# get rollin'
Bundler.require :default

Mongoid.configure do |config|
  config.clients.default = {
    uri: MONGODB_URL,
    #hosts: [ENV['DATABASE_SERVICE_NAME']],
    #database: ENV['MONGODB_DATABASE'],
    #user: ENV['MONGODB_USER'],
    #password: ENV['MONGODB_PASSWORD'],
  }


  config.log_level = :warn
end

# load the commands
require 'commands/salute'

# init the server
SlackRubyBotServer::App.instance.prepare!
SlackRubyBotServer::Service.start!

# start the server
run SlackRubyBotServer::Api::Middleware.instance
