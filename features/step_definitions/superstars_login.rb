Given(/^I visit the website as a guest user$/) do
  @browser.goto "https://superstars.avenuecode.com"
end

Given(/^I see the login button$/) do
  on(Login).signin

end

When(/^I insert my credentials with email and password$/) do

  on(Login).complete_valid_login

  end

When(/^I insert my credentials with invalid email and password$/) do

  on(Login).complete_invalid_login
end



