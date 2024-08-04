class JiraClient
  def initialize(token)
    headers = { 'Authorization' => 'Bearer ' + token }
    options = {
      site: 'https://api.atlassian.com',
      auth_type: :basic,
      default_headers: headers,
      context_path: '',
      rest_base_path: '/ex/jira/' + ENV['ATLASSIAN_CLOUD_ID'] + '/rest/api/2',
    }
    @client = JIRA::Client.new(options)
  end
end