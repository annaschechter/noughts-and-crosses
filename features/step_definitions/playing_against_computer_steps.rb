Given(/^I am on the play_computer page$/) do
  visit 'play_computer'
end

When(/^I enter "(.*?)" in "(.*?)"$/) do |value, field|
  fill_in field, :with => value
end

Then(/^I see "(.*?)" on the board$/) do |value|
  expect(page).to have_content value
end