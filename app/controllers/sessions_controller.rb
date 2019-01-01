class SessionsController < ApplicationController
  def create
    auth_hash = request.env["omniauth.auth"]
    user = User.where(:email =>auth_hash["info"]["email"]).first_or_create do |user|
      user.password = SecureRandom.hex
    end
    session[:user_id] = user.id
    byebug
  end
end
