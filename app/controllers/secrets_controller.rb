class SecretsController < ApplicationController
    def before_action 
        before_action :require_login
    end 
    def show 
       if !session[:name] || session[:name].empty? 
        redirect_to '/login'
       
       end
    end 
end 