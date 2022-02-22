class Users::TweetsController < ApplicationController
    # before_action: :authenticate
    
    def last_tweets
        default_tweets_number = 10
        tweets_number = tweets_params[:tweets_number] ||= default_tweets_number

        service = Tweets::LastTweetsService.new(tweets_number.to_i).call

        render json: service
    end

    def create
        tweet_text = tweets_params[:tweet_text]

        service = Tweets::CreateTweetService.new().call

        render json: service
    end

    private

    def tweets_params
        params.permit(:tweets_number, :tweet_text)
    end
end