Given /^I click on "([^"]*)"$/ do |item|
  click_on(item)
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |key, value|
  fill_in key, :with => value
end

Given /^I fill in the following:$/ do |table|
  table.rows_hash.each do |key, value|
    fill_in key, :with => value
  end
end

Then /^I should see "([^"]*)"$/ do |item|
  page.should have_content item
end

Then /^show me the page$/ do
  save_and_open_page
end

