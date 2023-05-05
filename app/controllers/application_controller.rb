class ApplicationController < ActionController::Base
  include ApplicationHelper
  helper_method :current_user

  private

  def logged_in?
    !current_user.nil?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
