When(/^I tap on "([^"]*)" option$/) do |option|
  case option
    when 'Quick Menu' then
      xpath("//android.widget.ImageView[@content-desc=\"More options\"]").click
      sleep 1
    # xpath("//android.widget.ImageView[@resource-id=\"com.booking:id/search_searchInput\"]").click
    else
      puts("No option defined for #{option}")
  end

end

And(/^I tap on "([^"]*)" option from the "([^"]*)" List$/) do |option, listView|
  case listView
    when 'Quick Menu' then
      xpath("//android.widget.ListView//android.widget.TextView[@text=\"#{option}\"]").click
      # xpath("//android.widget.FrameLayout[@index=“1”]/child::android.widget.ListView/child::android.widget.LinearLayout/child::android.widget.RelativeLayout/child::android.widget.TextView").click
    else
      puts("No option defined for #{listView}")
  end

end

When(/^I tap on "([^"]*)" item option from the "([^"]*)" list$/) do |item, listView|
  case listView
    when 'Language' then
      xpath(xpath("//android.widget.ListView//android.widget.CheckedTextView[@text=\"#{item}\"]")).click
    else
      puts("No option defined for #{item}")
  end

end

Then(/^I should see the application language changed to "([^"]*)" language title$/) do |idiom|
      text = xpath("//android.widget.TextView[@text=\"#{idiom}\"]").text
      expect(text).to eq("#{idiom}")
end

When(/^I select "([^"]*)" from "([^"]*)" menu$/) do |arg1, arg2|
  pending
end

Then(/^I should see "([^"]*)" item option is displayed on "([^"]*)" screen$/) do |arg1, arg2|
  pending
end

When(/^I tap on "([^"]*)" option from the "([^"]*)" screen$/) do |arg1, arg2|
  pending
end

Then(/^I should see "([^"]*)" item option is displayed on the "([^"]*)" list$/) do |item, listView|
  case listView
    when 'Language'
      text = xpath("//android.widget.ListView//android.widget.CheckedTextView[@text=\"#{item}\"]")
      expect(text).to eq("#{item}")
  end
end

Then(/^I should see "([^"]*)" item option is displayed on "([^"]*)" list$/) do |item, listView|
  case listView
    when 'Quick Menu'
      text = xpath("//android.widget.ListView//android.widget.TextView[@text=\"#{item}\"]").text
      expect(text).to eq("#{item}")
  end

end