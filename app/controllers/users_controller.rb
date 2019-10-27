class UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end

  def new
    @user = User.new(user_params)
  end

  def create
      @user = User.new(user_params)
      if @user.valid?
      @user.save
      render json: @user
    else
      render json: {status: "error", code: 400, errors: "User already exists"}
    end
  end

  def find_user
    @user = User.find(params[:username])

    if @user
      render json: @user
    else
      render json: "User not found!"
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

  render json: @user

  end

private

def user_params
  params.require(:user).permit(:username)
end

end
