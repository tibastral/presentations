# encoding: utf-8

class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"].to_s) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Authentification réussie !"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "A bientôt !"
  end

end