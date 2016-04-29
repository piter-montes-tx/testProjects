Given(/^I Open Booking\.com search screen$/) do
  sleep (4.seconds)
end

When(/^I tap on the "([^"]*)" input field$/) do |arg|
  xpath("//android.widget.EditText[@resource-id=\"com.booking:id/search_searchInput\"]").click
end

And(/^I fill in enter destination input with "(.*)"$/) do |arg|
  xpath("//android.widget.EditText[@resource-id=\"com.booking:id/disam_search\"]").type "#{arg}"
  sleep(3.seconds)
  xpath("//android.widget.LinearLayout[@index=\"0\"]").click
end

And(/^I click on Vamos alla$/) do
  xpath("//android.widget.TextView[@index=\"41\"]").click
  xpath("//android.widget.Button[@resource-id=\"com.booking:id/search_search\"]").click
end

Then(/^I should see "([^"]*)" in the result list$/) do |arg|

  sleep (2.seconds)
  xpath("//android.widget.ImageButton[@index=\"0\"]").click
  text = xpath("//android.widget.EditText[@resource-id=\"com.booking:id/search_searchInput\"]").text
  expect(text).to eq("#{arg}");

end

