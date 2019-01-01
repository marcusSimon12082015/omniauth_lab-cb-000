class SessionsController < ApplicationController
  def create
    binding.pry
    User.where(:email => auth())
  end
end
