class SessionsController < ApplicationController
    before_action :require_login, only: [:welcome, :secret]
    def hello
        redirect_to login_path
    end
    def new
    
    end
    def create
        session[:name] = params.permit(:name)[:name]
        if session[:name] == nil || session[:name].empty?
            redirect_to login_path
        else
            redirect_to welcome_path
        end
    end

    def destroy
      session.delete :name
    end

    private
    
end