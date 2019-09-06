class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name]
            redirect_to login_path
        elsif params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
    end
end