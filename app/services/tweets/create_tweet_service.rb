module Tweets
    class CreateTweetService < Tweets::BaseService

        def initialize(tweet_text)
            super

            @tweet_text = tweet_text
        end

        def call
            @client.update(@tweet_text)
        end


    end
end