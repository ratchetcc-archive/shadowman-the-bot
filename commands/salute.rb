class Salute < SlackRubyBot::Commands::Base
  command 'about'
  #match(/^#{bot_matcher}$/u)

  help do
    title 'salute'
    desc 'Says Salute!'
  end

  def self.call(client, data, _match)
    client.say(channel: data.channel, text: "Ave <@#{data.user}>!", gif: 'hi')
  end

end

class Market < SlackRubyBot::Bot
  scan(/([A-Z]{2,5})/) do |client, data, stocks|
    puts stocks
  end
end