class UsersController < ApplicationController
  before_action :set_user, only: :show

  def show
    @tweets = @user.tweets
  end

  def index
    @users = User.all
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
