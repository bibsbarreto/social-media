class UsersController < ApplicationController


    private

    def user_params
        params.permit(:name, :email, :password)
    end
end