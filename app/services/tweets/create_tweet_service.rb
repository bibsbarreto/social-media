module Tweets
    class CreateTweetService

        def initialize(params)
            @tweet = params[:tweet_text]
        end

        def call
            super

            @client.update(@tweet)
        end


    end
end