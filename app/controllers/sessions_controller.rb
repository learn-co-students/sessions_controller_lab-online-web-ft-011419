class SessionsController < ApplicationController
  def new
  end

  def create
    @username = params[:name]
    if @username.nil? || @username.empty?
      redirect_to '/sessions/new'
    else
    session[:name] = params[:name]
    redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
