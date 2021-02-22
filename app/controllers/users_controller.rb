class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find_by_id(params[:id])
    end

    def new
        @user = User.new
        render :signup
    end

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def new_login
        @user = User.new
    end

    def create_login
        @user = User.find_by(username: params.require(:user).permit(:username))
        redirect_to user_path(@user)
    end

    def logout
        if logged_in?
            session.destroy
            redirect_to home_path
        else
            redirect_to login_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
