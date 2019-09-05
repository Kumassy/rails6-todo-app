class SessionsController < ApplicationController
    def create
        user = User.find_or_create_from_auth(auth_hash)
        session[:user_id] = user.uid
        flash[:notice] = "ユーザ認証が完了しました。"
        redirect_to '/'
    end

 
    def destroy
        reset_session
        flash[:notice] = "ログアウトしました。"
        redirect_to root_path
    end

    protected
    def auth_hash
        request.env['omniauth.auth']
    end
end

