module Tweets
    class LastTweetsService < Tweets::BaseService

        def initialize(tweets_number)
            super
            
            @tweets_number = tweets_number
        end

        def call
            @client.user_timeline.take(@tweets_number)
        end


    end
end