class UsersController < ApplicationController
    def show
        # Find a user in the database using the user id from the session hash
        user=User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: {error: "Not authorized"}, status: :unauthorized
        end

    end
end
