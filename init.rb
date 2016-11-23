require 'redmine'

require_dependency 'user'
require_dependency 'application_controller'
require_dependency 'redmine_impersonate/view_hook_listener'

User.send(:include, RedmineImpersonate::UserPatch)
ApplicationController.send(:include, RedmineImpersonate::ApplicationControllerPatch)

Redmine::Plugin.register :redmine_impersonate do
  name 'Redmine Impersonate Plugin'
  author 'velaluqa'
  description 'Allows authorized users to impersonate a certain user.'
  version '1.0'
  url 'http://github.com/velaluqa/redmine_impersonate'
  author_url 'https://github.com/velaluqa'

  menu(
    :account_menu,
    :stop_impersonation,
    { controller: :impersonations, action: :stop },
    caption: :stop_impersonation_title,
    if: proc { !User.impersonated_user.nil? }
  )
end
