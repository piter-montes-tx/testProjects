# brackground
When(/^I tap on the "([^"]*)" icon$/) do |arg|
  xpath("//android.widget.ImageButton[@index=\"0\"]").click
  sleep 3
end

And(/^User previously search "([^"]*)" in date "([^"]*)"$/) do |arg1, arg2|
  pending
end

And(/^I tap on "([^"]*)" option$/) do |arg|
  xpath("//android.widget.TextView[@text=\"#{arg}\"]").click
end

Then(/^I should see "([^"]*)" name hotel in the first position in the list$/) do |arg|
  text = xpath("//android.widget.TextView[@text=\"#{arg}\"]").text
  expect(text).to eq("#{arg}")
end

And(/^I should see the Country name "([^"]*)"$/) do |arg|
  text = xpath("//android.widget.TextView[@text=\"#{arg}\"]").text
  expect(text).to eq("#{arg}")
end

And(/^I should see the date "([^"]*)"$/) do |arg|
  text = xpath("//android.widget.TextView[@text=\"#{arg}\"]").text
  expect(text).to eq("#{arg}")
end

And(/^I should see the guest "([^"]*)"$/) do |arg|
  text = xpath("//android.widget.TextView[@text=\"#{arg}\"]").text
  expect(text).to eq("#{arg}")
end


# ===== Scenario
#Then(/^I should see the "([^"]*)" hotel name "([^"]*)" times$/) do |arg1, arg2|
#  pending
#end

#And(/^I should see "([^"]*)" hotel with the last date modified "([^"]*)"$/) do |arg1, arg2|
#  pending
#end

#And(/^I should see "([^"]*)" hotel with the last guests modified "([^"]*)"$/) do |arg1, arg2|
#  pending
#end

