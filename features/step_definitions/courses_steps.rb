Given /^I go to the new course page$/ do
  click_on('New Course')
end

Given /^I go to a course page$/ do
  @course = Factory(:course, :degree_id => @degree)
  visit degree_path(@degree)
  click_on @course.name
end

Given /^I go to a course edit page$/ do
  steps %{ Given I go to a course page }
  click_on('Edit')
end

When /^I create a new course$/ do
  fill_in 'Name', :with => 'Artificial Intelligence'
  click_on('Criar Course')
end

When /^I update this course$/ do
  fill_in 'Name', :with => 'Human Computer Interaction'
  click_on('Atualizar Course')
end

When /^I delete this course$/ do
  click_on('Delete')
end

Then /^I should see the new course listed on the degree page$/ do
  @degree.courses.count.should == 1
  current_path.should == degree_path(@degree)
  page.should have_content 'Course Created!'
  page.should have_content 'Artificial Intelligence'
end

Then /^I should see this course with the information updated$/ do
  @degree.courses.count.should == 1
  current_path.should == degree_path(@degree)
  page.should have_content 'Course Updated!'
  page.should have_content 'Human Computer Interaction'
end

Then /^this course should not exist anymore$/ do
  Course.count.should == 0
  current_path.should == degree_path(@degree)
  page.should have_content 'Course Deleted!'
end

