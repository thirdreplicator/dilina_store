Given /^there is a widget "([^"]*)"$/ do |name|
  Widget.create!(:name => name)
end
