class SessionsController < ApplicationController
  def create
    byebug
    User.where(:email => auth())
  end
end
