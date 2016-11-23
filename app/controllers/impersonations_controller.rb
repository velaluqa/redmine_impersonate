class ImpersonationsController < ApplicationController # :nodoc:
  unloadable
  before_action :require_admin, except: :stop

  def start
    user = User.find(params[:user_id])
    session[:impersonated_user_id] = params[:user_id]
    User.impersonated_user = user
    redirect_to('/')
  end

  def stop
    session[:impersonated_user_id] = User.impersonated_user = nil
    redirect_to('/')
  end
end
