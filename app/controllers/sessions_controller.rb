class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].present?
      redirect_to sessions_new_path
    else
      session[:username] = params[:username]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].present?
      session[:name] = nil
    else
      session[:name]
    end
  end
end
