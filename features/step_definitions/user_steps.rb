Given /^I am an anonymous user$/ do
  visit destroy_user_session_path
end

Given /^there is a user with email "([^"]*)" and password "([^"]*)"$/ do |email, password|
  Given "I am on the registration page"
  And "I fill in \"user_email\" with \"#{email}\""
  And "I fill in \"user_password\" with \"#{password}\""
  And "I fill in \"user_password_confirmation\" with \"#{password}\""
  And "I press \"Sign up\""
  And "I follow \"Sign out\""
  Then "there should be a user with email \"#{email}\""
end

Given /^there should be a user with email "([^"]*)"$/ do |arg1|
  user = User.where(:email => 'thirdreplicator@gmail.com').first
  user.should_not be_nil
end

Given /^I am logged in as "([^"]*)"$/ do |email|
  password = "abc123"
  Given "I follow \"Login\""
  And "I fill in \"user_email\" with \"#{email}\""
  And "I fill in \"user_password\" with \"#{password}\""
  And "I press \"Sign in\""
  Then "I should see \"Hello, #{email}\""
end

