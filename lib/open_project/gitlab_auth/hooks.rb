module OpenProject::GitlabAuth
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_account_login_auth_provider, :partial => 'hooks/login/gitlab_auth'
  end
end
