class SessionsController < ApplicationController


    def login
        if(params[:token])
            render json: UserSerializer.new(User.find(decode_token(params[:token]))).as_json
        else
            user = User.find_by(username: params[:username].downcase)
            token = generate_token({id: user.id})
            if (user && user.authenticate(params[:password]))
                render json: {token: token}
                # render json: UserSerializer.new(user).as_json
                # render json: {
                #     user_data: UserSerializer.new(user).as_json,
                #     token: token
                # }
                # render json: user.as_json(default_filter)
            else
                render json: {message: 'Login Error'}
            end
        end
    end


    # for testing purposes
    def view
        user = User.first()
        token = generate_token({id: user.id})
        render json: token
        # render json: {
        #         user_data: UserSerializer.new(user).as_json,
        #         token: token
        #     }
        # render json: user.as, serializer: UserSerializer
        # render json: user.as_json(default_filter)
    end

    private

  

    def generate_token(payload)
        secret_key = 'Jon2OnF0d'
        return JWT.encode(payload, secret_key, 'HS256')
    end

    def decode_token(token)
        secret_key = 'Jon2OnF0d'
        return JWT.decode(token, secret_key, { algorithm: 'HS256' }).first()["id"]
    end

    def default_filter
        {
            :only => [:id, :username],
            :include => {
                :sugar_records => {
                    :only => [:id, :value, :date],
                    :include => {
                        :comment => {
                            :only => [:id, :text]
                        }
                    }
                    
                }
            }
        }
            
        end

end
