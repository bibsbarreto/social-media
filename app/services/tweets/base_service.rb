module Tweets
    class BaseService < ApplicationService
    
        def initialize
            super
        end
    
        def call
            @client = Twitter::REST::Client.new do |config|
                config.consumer_key        = Rails.application.credentials.consumer_key
                config.consumer_secret     = Rails.application.credentials.consumer_secret
                config.access_token        = Rails.application.credentials.access_token
                config.access_token_secret = Rails.application.credentials.access_token_secret
            end
        end
        
    end
end