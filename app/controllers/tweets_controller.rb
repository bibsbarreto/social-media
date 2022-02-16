class TweetsController < ApplicationController

    def index
        service = Tweets::IndexService.call
    end

    private

    def tweets_params
        params.permit(:text)
    end
end