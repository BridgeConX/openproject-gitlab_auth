# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'
require 'omniauth-gitlab'

module OpenProject::GitlabAuth
  class Engine < ::Rails::Engine
    engine_name :openproject_gitlab_auth

    include OpenProject::Plugins::ActsAsOpEngine
    extend OpenProject::Plugins::AuthPlugin

    register 'openproject-gitlab_auth',
             :author_url => 'http://enge.me',
             :requires_openproject => '>= 3.1.0pre1'

    register_auth_providers do
      strategy :gitlab do
        [{name: 'gitlab_auth', display_name: 'GitLab'}]
      end
    end
  end
end
