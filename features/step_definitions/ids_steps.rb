Given /^I go to new ID page$/ do
  visit root_path
end

When /^I request a new ID$/ do
  fill_in 'Name', :with => 'Luiz Branco'
  fill_in 'Email', :with => 'artfikan@gmail.com'
  select 'Uerj', :from => 'University'
  select 'Social Communication', :from => 'Degree'
  check 'I Agree'
  click_on 'Create'
end

Then /^I should receive the new ID$/ do
  Id.count.should == 1
  current_path.should == id_path(Id.first)
  page.should have_content 'Your ID was created!'
end
