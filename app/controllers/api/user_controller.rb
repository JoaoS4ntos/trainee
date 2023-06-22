class Api::UserController < ApplicationController
    def login
        user = User.find_by(email: params[:email])
        if user.valid_password?(params[:password])
            render json: user, status: :ok
        else
            head :unauthorized
        end
    rescue StandardError
        head :unauthorized
    end
    acts_as_token_authentication_handler_for User

end
