class UsersController < ApplicationController
    def new
        @users = User.new
    end

    def create
        #@user = User.new(username: params[:username], email: params[:email], password: params[:password])
        @user = User.new(user_params)
        if @user.save
            redirect_to new_users_path
        else
            reder :new, status::unprocessable_entity
        end
    end

end
