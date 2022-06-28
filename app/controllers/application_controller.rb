class ApplicationController < ActionController::Base
  helper_method :logged_in?

  private

  def logged_in?
    !!session[:user_id] #session[:user_id]に値が入っていればログインとしてtrue
  end
end
