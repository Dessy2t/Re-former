class UsersController < ApplicationController
    def new
        @users = User.new
    end

    def create
       #@user = User.new(username: params[:username], email: params[:email], password: params[:password])
         @User = User.new(user_params)
        if @user.save
            redirect_to new_users_path
        else
            render :new, status::unprocessable_entity
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
           redirect_to_new_user_path(@user)
        else
           render :edith, status::unprocessable_entity
        end
    end

    private
        def user_params
           params.require(:user).permit(:username, :email, :password)
        end

end
