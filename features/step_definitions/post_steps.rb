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
  page.must_have_content('merci beaucoup pour proposition !')
end

Then /^show me the page$/ do
  save_and_open_page
end
