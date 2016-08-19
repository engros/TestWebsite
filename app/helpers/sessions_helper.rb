module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id #session is a rails method that temporarily holds cookie
    # containing an encrypted version of the user’s id, which allows us to retrieve the id on subsequent pages
    # this is secure only for this temporary cookie but not for a persisting cookie

    # Returns the current logged-in user (if any).
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end