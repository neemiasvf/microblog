Given(/^I previously posted a tweet$/) do
  @tweet = FactoryBot.create(:tweet, user: @user)
end

And(/^I should be on the page "My Tweets"$/) do
  assert_current_path(user_path @user)
end

And(/^the posted tweet should be visible$/) do
  expect(page).to have_content(Tweet.last.content)
end

When(/^I try to delete a tweet that does not belong to me$/) do
  @tweet = FactoryBot.create(:tweet)
  page.driver.submit :delete, "/tweets/#{@tweet.id}", {}
end

And(/^that tweet should still be posted$/) do
  Tweet.find(@tweet.id)
end

When(/^I try to access the index for tweets$/) do
  visit tweets_path
end