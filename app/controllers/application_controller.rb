class ApplicationController < ActionController::Base

  private

  def get_jira_client
    @jira_client ||= JiraClient.new(session[:token])
  end
end
