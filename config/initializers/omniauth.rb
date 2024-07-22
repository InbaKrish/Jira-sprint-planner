SCOPES = %w[
read:me
read:account
read:jira-work
read:jira-user
write:jira-work
]

OmniAuth.config.allowed_request_methods = [:get, :post]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :atlassian_oauth2, ENV['ATLASSIAN_CLIENT_ID'], ENV['ATLASSIAN_CLIENT_SECRET'],
    scope: SCOPES.join(' '),
    prompt: "consent"
end