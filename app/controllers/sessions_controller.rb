class SessionsController < ApplicationController


    def login
        user = User.find_by(username: params[:username].downcase)
        if (user && user.authenticate(params[:password]))
            render json: UserSerializer.new(user).as_json
        else
            render json: {message: 'Login Error'}
        end
    end

    def view
        user = User.first()
        render json: UserSerializer.new(user).as_json
    end

end
