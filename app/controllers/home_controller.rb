class HomeController < ApplicationController
  def index
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def about
  end
end
