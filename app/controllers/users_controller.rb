class UsersController < ApplicationController
    def new
    @user = User.new
    end

    def create
        user = { username: params[:username], email: params[:email], password: params[:password] }
        @user = User.new(user)

        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end
end
