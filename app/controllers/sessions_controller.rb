class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user_info = request.env['omniauth.auth']

    # client = OAuth2::Client.new(ENV['ATLASSIAN_CLIENT_ID'], ENV['ATLASSIAN_CLIENT_SECRET'], site: 'https://rently.atlassian.net')
    # access_token = OAuth2::AccessToken.new(client, user_info.credentials.token)

    session[:token] = user_info.credentials.token
  end
end