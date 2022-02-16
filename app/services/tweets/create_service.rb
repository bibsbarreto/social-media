class Tweets::CreateService

    def initialize(tweet)
        @tweet = tweet
    end

    def call
        puts Twitter.tweets
    end


end