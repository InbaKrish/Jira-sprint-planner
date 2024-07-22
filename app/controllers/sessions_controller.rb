class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user_info = request.env['omniauth.auth']
    p user_info
  end
end