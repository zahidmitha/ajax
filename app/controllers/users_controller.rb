class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    render :json => create_json, :status => create_code
  end

  private

  def create_json
    if @user.invalid?
      {:message => "There were some errors in your form", :errors => @user.errors}
    else
      {:message => "Success!"}
    end
  end

  def create_code
    @user.valid? ? 200 : :unprocessable_entity
  end
end