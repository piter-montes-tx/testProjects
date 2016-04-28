Given(/^I click on the hamburguer button$/) do
  wait{ xpath("//android.widget.ImageButton[@index='0']").click}
end

And(/^I tap on the "([^"]*)" option$/) do |arg|
  $driver.find("#{arg}").click
end

Given(/^I tap on "([^"]*)" button$/) do |arg|
  puts "lookng for: #{arg}"
  scroll_to ("#{arg}")
  button("#{arg}").click
end

When(/^I fill in email Address field with "(.*)"$/) do |arg|
  id('user_email').type "#{arg}"
end

And(/^I fill in Password field with "(.*)"$/) do |arg|
  puts "Password: #{arg}"
  id('user_password').send_keys "#{arg}"
end

And(/^I click "([^"]*)" button$/) do |arg|
  button("#{arg}").click
end

Then(/^I should see "(.*)" Message Popup$/) do |arg|
  txt = id('message').text
  puts "text captured:" + txt
  expect(txt).to eq("#{arg}")
end

And(/^I should be able to press "(.*)" button$/) do |arg|
  button("#{arg}").click
end

When(/^I Click Sign in button$/) do
  id('sign_in_button').click
end

Then(/^I should be logged to the Search Activity$/) do
  txt = id('search_title').text
  expect(txt).to eq("Search")
end

And(/^I should see "(.*)" email account$/) do |arg|
  step "I click on the hamburguer button"
  txt = id('navigation_drawer_header_user_name').text

  expect(txt).to eq("#{arg}")
end

Then(/^I should see error message popup$/) do
  exists{id('title')}?(expect(id('title').text).to eq('Oops! Sign in failed')):(raise 'expected message popup not found.')
end

And(/^I should click "([^"]*)" button$/) do |arg|
  button('OK').click
end