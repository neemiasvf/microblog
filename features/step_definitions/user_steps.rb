When(/^I fill out the registration form$/) do
  user_attrs = FactoryBot.attributes_for :user
  fill_in 'Full name', with: user_attrs[:full_name]
  fill_in 'Email', with: user_attrs[:email]
  fill_in 'Password', with: user_attrs[:password]
  fill_in 'Password confirmation', with: user_attrs[:password]
end

Given(/^I am already registered$/) do
  @user = FactoryBot.create :user
end

Given(/^there is a registered user$/) do
  @user = FactoryBot.create :user
end

When(/^I fill out my credentials$/) do
  fill_in 'Email', with: @user[:email]
  fill_in 'Password', with: '12345678'
end

And(/^there should be no tweets from that user$/) do
  expect(Tweet.posted_by(@user).count).to eq(0)
end

Given(/^I am signed in$/) do
  visit new_user_session_path
  fill_in 'Email', with: @user[:email]
  fill_in 'Password', with: '12345678'
  within '#new_user' do
    click_on 'Sign in'
  end
  assert_current_path(root_path)
  expect(page).to have_content("Signed in successfully.")
end

When(/^that user has posted tweets$/) do
  @tweet = FactoryBot.create(:tweet, user: @user)
end

When(/^I click on that user's name on the list of people$/) do
  click_on @user.full_name
end

Then(/^I should see that user's profile$/) do
  expect(page).to have_content(@user.full_name)
end

Then(/^it should contain posted tweets$/) do
  expect(page).to have_content(@tweet.content)
end