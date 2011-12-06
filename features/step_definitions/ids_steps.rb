Given /^I go to new ID page$/ do
  visit root_path
end

When /^I request a new ID$/ do
  fill_in 'Nome', :with => 'Luiz Branco'
  select 'Uerj', :from => 'Universidade'
  select 'Social Communication', :from => 'Curso'
  check 'Eu concordo com os'
  click_on 'Criar'
end

Then /^I should receive the new ID$/ do
  Id.count.should == 1
  current_path.should == id_path(Id.first)
  page.should have_content 'Carteirinha Criada!'
  click_on 'Imprimir'
  current_path.should == '/templates/uerj/1'
end
