
Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = ENV['BOT_NAME']
  config.robot.mention_name = ENV['BOT_MENTION_NAME']
  config.robot.alias = ENV['BOT_ALIAS']

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = ENV['LOG_LEVEL'].to_sym

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  #config.robot.adapter = :shell

  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']
  config.robot.admins = ENV['BOT_ADMINS'].split(',')
  
  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  config.redis.host = ENV['REDIS_HOST']
  config.redis.port = ENV['REDIS_PORT']

  # HTTP listener
  config.http.host = ENV['HTTP_HOST']
  config.http.port = ENV['HTTP_PORT']

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end

