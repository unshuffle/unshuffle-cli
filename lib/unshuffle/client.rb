require 'rocket_pants'

module Unshuffle
  class Client < RocketPants::Client
    version 1
    base_uri 'http://unshuffle.me/api'

    def initialize(token)
      @token = token
    end

    class Task < APISmith::Smash
      property :title
      property :priority
      property :state
    end

    def tasks
      get('tasks', as: Task)
    end

    def base_request_options
      {
        headers: {
          'Authorization' => ActionController::HttpAuthentication::Token.encode_credentials(token)
        }
      }
    end

    private
    attr_reader :token
  end
end
