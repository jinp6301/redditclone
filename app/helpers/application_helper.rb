module ApplicationHelper

  def find_user
    User.find_by_token(session[:token])
  end
end
