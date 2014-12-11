Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click on "(.*?)"$/) do |link|
  click_link link
end

Then(/^I go to play page$/) do
  visit '/play'
end

Then(/^I see "(.*?)"$/) do |text|
  expect(page).to have_content text
end