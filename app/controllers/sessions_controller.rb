class SessionsController < ApplicationController
    def create
      @user =
        User.find_or_create_by(uid: auth['uid']) do |u|
          u.name = auth['info']['name']
        end
  
      session[:user_id] = @user.id
  
      redirect_to '/'
    end
  
    def destroy
        session.delete :user_id
        redirect_to '/'
    end

    private
  
    def auth
      request.env['omniauth.auth']
    end
  end