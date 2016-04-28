When(/^I tap on "([^"]*)" option$/) do |option|
  case option
    when 'Quick Menu' then
      sleep 1
      # xpath("//android.widget.ImageView[@content-desc=\"More options\"]").click
      xpath("//android.widget.FrameLayout[@index='0']/child::android.widget.LinearLayout/child::android.widget.FrameLayout/child::android.view.View/child::android.widget.FrameLayout/child::android.view.View/child::android.support.v7.widget.LinearLayoutCompat/child::android.widget.ImageView").click

      sleep 1
    # xpath("//android.widget.ImageView[@resource-id=\"com.booking:id/search_searchInput\"]").click
    else
      puts("No option defined for #{option}")
  end

end

And(/^I tap on "([^"]*)" option from the "([^"]*)" List$/) do |option, listView|
  case listView
    when 'Quick Menu' then
      # xpath("//android.widget.ListView//android.widget.TextView[@text=\"#{option}\"]").click
      xpath("//android.widget.FrameLayout[@index='0']/child::android.widget.ListView/child::android.widget.LinearLayout/child::android.widget.RelativeLayout/child::android.widget.TextView").click
      sleep 1
    else
      puts("No option defined for #{listView}")
  end
end

And(/^I tap on "([^"]*)" option from the "([^"]*)" lists$/) do |option, listView|
  case listView
    when 'Quick Menu' then
      # xpath("//android.widget.ListView//android.widget.TextView[@text=\"#{option}\"]").click
      xpath("//android.widget.FrameLayout[@index='0']/child::android.widget.ListView/child::android.widget.LinearLayout/child::android.widget.RelativeLayout/child::android.widget.TextView").click
      sleep 1
    else
      puts("No option defined for #{listView}")
  end
end
When(/^I tap on "([^"]*)" item option from the "([^"]*)" list$/) do |item, listView|
  case listView
    when 'Language' then
      scroll_to ("#{item}")
      xpath("//android.widget.ListView//android.widget.CheckedTextView[@text=\"#{item}\"]").click
      sleep 1
    else
      puts("No option defined for #{item}")
  end

end

Then(/^I should see the application language changed to "([^"]*)" language title$/) do |idiom|
  text = xpath("//android.widget.TextView[@text=\"#{idiom}\"]").text
  expect(text).to eq("#{idiom}")
  sleep 1
end

# When(/^I select "([^"]*)" from "([^"]*)" menu$/) do |arg1, arg2|
#   pending
# end

# Then(/^I should see "([^"]*)" item option is displayed on "([^"]*)" screen$/) do |arg1, arg2|
#   pending
# end

Then(/^I should see "([^"]*)" item option is displayed on the "([^"]*)" list$/) do |item, listView|
  case listView
    when 'Language'
      text = xpath("//android.widget.ListView//android.widget.CheckedTextView[@text=\"#{item}\"]").text
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


# Then /^I scroll (left|right|up|down) until I see "([^"]*)" limit (\d+)$/ do |dir, name, limit|
#   # unless exists?(name)
#   #   count = 0
#   #   begin
#   #     scroll("scrollView index:0", dir)
#   #     step_pause
#   #     count = count + 1
#   #   end while ((not exists?(name)) and count < limit.to_i)
#   # end
#   # unless exists?(name)
#   #   screenshot_and_raise "i scrolled '#{dir}' '#{limit}' times but did not see #{name}"
#   # end
#
#   scroll_to name
# end