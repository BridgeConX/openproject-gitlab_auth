# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require 'open_project/gitlab_auth/version'

Gem::Specification.new do |s|
  s.name        = "openproject-gitlab_auth"
  s.version     = OpenProject::GitlabAuth::VERSION
  s.authors     = "Adam Engebretson"
  s.email       = "adam@bridgeconx.com"
  # s.homepage    = "https://github.com/machisuji/openproject-mock_auth"
  s.summary     = 'OpenProject GitLab Auth'
  s.description = "Adds a GitLab omniauth strategy to Openproject."
  s.license     = "GPLv3"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(CHANGELOG.md README.md)

  s.add_dependency "rails", "~> 3.2.14"
  s.add_dependency "openproject-auth_plugins", "~> 4.0.0"
  s.add_dependency "omniauth-gitlab", "~> 1.0.2"

  s.add_development_dependency "rspec", "~> 2.14"
end
