class AuthController < ApplicationController
    def signup
        @user = User.new(signup_params)

        render json: @user
    end 

    private
    def signup_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end


end