Given(/^I visit the homepage$/) do
  visit root_path
  assert_current_path(root_path)
end

When(/^I click on "([^"]*)"$/) do |button|
  click_on button
end

When(/^I click on "([^"]*)" within "([^"]*)"$/) do |button, scope_id|
  within "##{scope_id}" do
    click_on button
  end
end

When(/^I fill the field "([^"]*)" with the value "([^"]*)"$/) do |field, value|
  fill_in field, with: value, match: :prefer_exact
end

Then(/^I should see "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
end

Then(/^I should be at the homepage$/) do
  assert_current_path root_path
end