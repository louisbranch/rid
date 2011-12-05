When /^show me the page$/ do
  save_and_open_page
end

Given /^the following exist:$/ do |table|
  table.rows_hash.each do |key, value|
    Factory(key, :name => value)
  end
end


