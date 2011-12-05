Given /^I go to the new university page$/ do
  visit universities_path
  click_on('New University')
end

Given /^I go to a univeristy page$/ do
  @university = Factory(:university)
  visit universities_path(@university)
  click_on @university.name
end

Given /^I go to the a university edit page$/ do
  steps %{ Given I go to a univeristy page }
  click_on('Edit')
end

When /^I create a university$/ do
  fill_in 'Acronymous', :with => 'Uerj'
  fill_in 'Name', :with => 'Universidade do Estado do Rio de Janeiro'
  click_on('Criar University')
end

When /^I update this university$/ do
  fill_in 'Acronymous', :with => 'UFRJ'
  fill_in 'Name', :with => 'Universidade Federal do Rio de Janeiro'
  click_on('Atualizar University')
end

When /^I delete this university$/ do
  click_on('Delete')
end

Then /^I should see the new university listed on the universities page$/ do
  University.count.should == 1
  current_path.should == universities_path
  page.should have_content 'University Created!'
  page.should have_content 'Uerj'
  page.should have_content 'Universidade do Estado do Rio de Janeiro'
end

Then /^I should see this university with the information updated$/ do
  current_path.should == universities_path
  page.should have_content 'University Updated!'
  page.should have_content 'UFRJ'
  page.should have_content 'Universidade Federal do Rio de Janeiro'
end

Then /^this university should not exist anymore$/ do
  University.count.should == 0
  current_path.should == universities_path
  page.should have_content 'University Deleted!'
end


