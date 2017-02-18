class Helpers
  def self.current_user(session)
    User.find(session[:user_id]) if session.has_key?(:user_id)
  end

  def self.is_logged_in?(session)
    return session[:user_id] ? true : false
  end
end