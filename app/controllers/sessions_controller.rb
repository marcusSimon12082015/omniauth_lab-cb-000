class SessionsController < ApplicationController
  def create
    auth_hash = request.env["omniauth.auth"]
    User.where(:email =>auth_hash["info"]["email"]).first_or_create do |user|
      user.password = SecureRandom.hex
    end
    byebug
  end
end
