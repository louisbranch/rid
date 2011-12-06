Given /^I go to the login page$/ do
  visit login_path
end

When /^I log in$/ do
  fill_in 'Password', :with => 'foobar'
  click_on 'Login'
end

Then /^I should receive admin privileges$/ do
  current_path.should == root_path
  page.should have_content 'Welcome Back!'
end

Given /^I am logged in$/ do
  steps %{
    Given I go to the login page
		When I log in
		Then I should receive admin privileges
  }
end

When /^I go to the logout page$/ do
  visit logout_path
end

Then /^I should lose the admin privileges$/ do
  current_path.should == root_path
  page.should have_content 'See you later!'
end

