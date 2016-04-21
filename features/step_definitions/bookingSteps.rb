Given(/^I Open Booking\.com search screen$/) do
  sleep 2
  #searchTittle = xpath("//android.widget.ImageButton[@resource-id=\"com.booking:id/up\"]").text
end

When(/^I tap on the "([^"]*)" input field$/) do |arg|
  xpath("//android.widget.EditText[@resource-id=\"com.booking:id/search_searchInput\"]").click
end

And(/^I fill in enter destination input with "(.*)"$/) do |arg|
  xpath("//android.widget.EditText[@resource-id=\"com.booking:id/disam_search\"]").type "#{arg}\n"
  sleep(3.seconds)
  xpath("//android.widget.LinearLayout[@index=\"0\"]").click
end

And(/^I click on Vamos alla$/) do
  xpath("//android.widget.TextView[@index=\"41\"]").type '\n'
  xpath("//android.widget.Button[@resource-id=\"com.booking:id/search_search\"]").click
end

Then(/^I should see "([^"]*)" in the result list$/) do |arg|
  text = xpath("//android.widget.RelativeLayout[@index=\"2\"]/child::android.widget.RelativeLayout/child::android.widget.TextView[@index=\"2\"]")
  expect(text).to eq('Apartment Cochabamba')
end