require 'httparty'

class LineNotifier
  include HTTParty
  base_uri 'https://notify-api.line.me'

  def initialize(token)
    @token = token
  end

  def send_message(message)
    options = {
      headers: {
        'Authorization' => "Bearer #{@token}",
        'Content-Type' => 'application/x-www-form-urlencoded'
      },
      body: {
        'message' => message
      }
    }

    self.class.post('/api/notify', options)
  end
end
