# encoding: utf-8

Given /^I am on the homepage$/ do
  visit(root_path)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |label, content|
  fill_in label, :with => content
end

When /^I press "([^"]*)"$/ do |label|
  click_button(label)
end

Then /^I should be thanked successfully$/ do
  page.should have_content('Merci beaucoup pour cette proposition !')
end

Then /^I should see a presentation from "([^"]*)"$/ do |name|
  page.should have_content("proposé par #{name}")
end

Then /^show me the page$/ do
  save_and_open_page
end

Given /^I have already posted with email "([^"]*)"$/ do |email|
  User.first.update_attribute :email, email
end