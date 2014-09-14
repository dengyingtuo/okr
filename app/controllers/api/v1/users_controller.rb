class Api::V1::UsersController < ApplicationController
  respond_to :json
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    respond_with User.all
  end

  def show
    respond_with @user
  end

  def create
    respond_with :api, :v1, User.create(user_params)
  end

  def update
    respond_with @user.update(user_params)
  end

  def destroy
    respond_with @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end