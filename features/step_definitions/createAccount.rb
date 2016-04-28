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

And(/^I finn in Password field with "([^"]*)"$/) do |arg|
  id('user_password').type "#{arg}"
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