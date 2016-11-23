module RedmineImpersonate
  class ViewHookListener < Redmine::Hook::ViewListener
    def view_account_list_buttons(context = {})
      return if User.current.id == context[:user].id
      return unless User.current.admin?
      link_to l('start_impersonation_title'), start_impersonation_path(user_id: context[:user].id)
    end

    def view_account_contextual(context = {})
      return if User.current.id == context[:user].id
      return unless User.current.admin?
      link_to l('start_impersonation_title'), start_impersonation_path(user_id: context[:user].id)
    end
  end
end
