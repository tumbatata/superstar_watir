Given(/^I visit the website as a guest user$/) do
  @browser.goto "https://superstars.avenuecode.com"
end

Given(/^I see the login button$/) do
  on(LoginHelper::Login).signin

end

When(/^I insert my credentials with tsilva@hotmail\.com and sdhhiuas$/) do
  @browser.text_field(:id => 'Email').set('tsilva@hotmail.com')
  @browser.button(:value => 'Next').click
  sleep(2)
  @browser.text_field(:id => 'Passwd').set('sdhhiuas')
  @browser.button(:value => 'Sign in').click
  end

  When(/^I insert my credentials with tsilva@avenuecode.com\ and Mastodonte$/) do
    @browser.text_field(:id => 'Email').set('tsilva@avenuecode.com')
    @browser.button(:value => 'Next').click
    sleep(2)
    @browser.text_field(:id => 'Passwd').set('Mastodonte')
    @browser.button(:value => 'Sign in').click
  end



