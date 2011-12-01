Given /^I go to the new degree page$/ do
  visit degrees_path
  click_on('New Degree')
end

Given /^I go to a degree page$/ do
  @degree = Factory(:degree)
  visit degrees_path
  click_on @degree.name
end

Given /^I go to a degree edit page$/ do
  steps %{ Given I go to a degree page }
  click_on('Edit')
end

When /^I create a new degree$/ do
  fill_in 'Name', :with => 'Computer Science'
  click_on('Create Degree')
end

When /^I update this degree$/ do
  fill_in 'Name', :with => 'Sociology'
  click_on('Update Degree')
end

When /^I delete this degree$/ do
  visit degree_path(@degree)
  click_on('Delete')
end

Then /^I should see the new degree listed on the degrees page$/ do
  Degree.count.should == 1
  current_path.should == degrees_path
  page.should have_content 'Degree Created!'
  page.should have_content 'Computer Science'
end

Then /^I should see this degree with the information updated$/ do
  current_path.should == degrees_path
  page.should have_content 'Degree Updated!'
  page.should have_content 'Sociology'
end

Then /^this degree should not exist anymore$/ do
  Degree.count.should == 0
  current_path.should == degrees_path
  page.should have_content 'Degree Deleted!'
end
