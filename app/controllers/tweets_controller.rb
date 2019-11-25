class TweetsController < ApplicationController
  before_action :set_tweet, only: :destroy
  before_action :authenticate_user!, only: :destroy

  def index
    if user_signed_in?
      redirect_to user_path(current_user)
    else
      redirect_to root_path
    end
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    respond_to do |format|
      if @tweet.save
        format.html { redirect_to tweets_path, notice: 'Tweet successfully posted.' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @tweet.user == current_user
        @tweet.destroy
        format.html { redirect_to tweets_path, notice: 'Tweet was successfully deleted.' }
        format.json { head :no_content }
      else
        format.html { redirect_to tweets_path, alert: "Sorry. You can only delete tweets that were posted by you." }
      end
    end
  end

  private
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    def tweet_params
      params.require(:tweet).permit(:content, :user_id)
    end
end
