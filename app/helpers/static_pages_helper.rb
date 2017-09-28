module StaticPagesHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def remember(user)
    user.remember
    cookies.permanet.signed[:user_id] = user.id
    cookies.permanet[:remember_token] = user.remember_token
  end

  def current_user?(user)
    user == current_user
  end

  def current_user
  end
end
