class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def new
  end

  def show
    if !session[:name] 
      redirect_to '/sessions/new'
    end
  end

  def create 
    if params[:name] || session[:name]
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
