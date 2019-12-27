class SessionsController < ApplicationController


    def login
        user = User.find_by(username: params[:username].downcase)
        if (user && user.authenticate(params[:password]))
            # render json: UserSerializer.new(user).as_json
            render json: user.as_json(default_filter)
        else
            render json: {message: 'Login Error'}
        end
    end

    def view
        user = User.first()
        # render json: user.as, serializer: UserSerializer
        render json: user.as_json(default_filter)
    end

    private

    def default_filter
        {
            :only => [:id, :username],
            :include => {
                :sugar_records => {
                    :only => [:id,:value, :date],
                    :include => {
                        :comment => {
                            :only => [:text]
                        }
                    }
                    
                }
            }
        }
            
        end

end
