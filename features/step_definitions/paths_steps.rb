Given /^I go to the (\w*) page$/ do |resource|
  visit url_for(:controller => resource, :action => 'index')
end

Given /^I go to the new (\w*) page$/ do |resource|
  visit url_for(:controller => resource.pluralize, :action => 'new')
end

Given /^I go to this (\w*) page$/ do |resource|
  visit url_for(@resource)
end

Given /^I go to this (\w*) edit page$/ do |resource|

  visit polymorphic_url(@resource, :action => 'edit')
end

Then /^I should be redirected to the (\w*) page$/ do |resource|
  current_url.should == url_for(:controller => resource, :action => 'index')
end

Then /^I should be redirected to the new (\w*) page$/ do |resource|
  current_url.should == url_for(:controller => resource.pluralize, :action => 'new')
end

Then /^I should be redirected to this (\w*) page$/ do |resource|
  current_url.should == url_for(:controller => resource.pluralize, :action => 'show', :id => 1)
end

Then /^I should be redirected to this (\w*) edit page$/ do |resource|
  current_url.should == url_for(:controller => resource.pluralize, :action => 'edit', :id => 1)
end

