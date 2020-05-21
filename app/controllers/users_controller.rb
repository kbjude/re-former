class UsersController < ApplicationController
    def new
    @user = User.new
    end

    def create
        @user = User.new(use_params)

        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end

    private
    
    def use_params
        params.require(:post).permit(:username, :email, :password)
    end
end
