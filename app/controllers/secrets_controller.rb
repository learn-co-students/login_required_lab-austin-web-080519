class SecretsController < ApplicationController
    before_action :require_login

    def welcome
        @name = session[:name]
    end

    def show
    end

    private

    def require_login
        redirect_to login_path unless session.include? :name
    end


end