module Lita
  module Handlers
    class Echo < Handler
      # insert handler code here

      route(/^echo\s+(.+)/) do |response|
        # Callback code goes here
        puts "+++ ECHO #{response} +++"
      end

      Lita.register_handler(self)
    end
  end
end
