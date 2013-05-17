class UsersController < ApplicationController
  def new

  end

  def create
    User.create(params[:user])
    render :json => {:message => "Success!"}
  end
end