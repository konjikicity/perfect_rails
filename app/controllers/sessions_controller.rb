class SessionsController < ApplicationController
  skip_before_action :authenticate
  
  def create
    user = User.find_or_create_from_auth_hash!(request.env["omniauth.auth"]) # OmniAuth::AuthHashのオブジェクトを作成
    session[:user_id] = user.id  # User.find_or_create_from_auth_hash!が返すオブジェクトのIDをセッションに格納
    redirect_to root_path, notice: "ログインしました" # topページへのリダイレクト
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "ログアウトしました"
  end
end
