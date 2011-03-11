class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def admin_check
    redirect_to home_url unless user_signed_in? && current_user.is_admin?
  end
end
