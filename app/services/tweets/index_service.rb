module Tweets
    class IndexService < Tweets::BaseService

        def initialize
            super
        end

        def call
            super 
            puts @client.user.description
        end


    end
end