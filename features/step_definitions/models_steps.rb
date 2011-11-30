Given /^I have (\d+) (\w*)$/ do |count, model|
  count = count.to_i
  constant = model.singularize.camelize.constantize
  model = model.singularize.to_sym
  count.times do
    Factory(model)
  end
  constant.count.should == count
end

Then /^I should have (\d+) (\w*)$/ do |count, model|
  count = count.to_i
  constant = model.singularize.camelize.constantize
  constant.count.should == count
end
