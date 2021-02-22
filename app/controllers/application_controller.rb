class ApplicationController < ActionController::Base

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        User.find(session[:user_id])
    end

    def home
        if logged_in?
            @user = User.find(session[:user_id]) 
        else
            redirect_to login_path
        end
    end

end
