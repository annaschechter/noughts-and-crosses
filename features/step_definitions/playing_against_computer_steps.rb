Given(/^I am on the play_computer page$/) do
  visit 'play_computer'
end

When(/^I enter "(.*?)" in "(.*?)"$/) do |value, field|
  fill_in field, :with => value
end

Given(/^I made my choice$/) do
  fill_in "Make your choice", :with => 2
end

Then(/^computer makes its choice$/) do
  
end

Then(/^I should see "(.*?)" on the board$/) do |choice|
  page.should have_content choice
end