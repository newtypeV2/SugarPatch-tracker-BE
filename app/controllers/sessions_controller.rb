class SessionsController < ApplicationController

    def view
        user = User.first()
        render json: UserSerializer.new(user).as_json
    end

end
