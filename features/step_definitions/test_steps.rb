require "net/http"
require "uri"

Given /^I (?:am on|go to) "([^\"]*)"$/ do |url|
  visit "#{url}"
end
 
Then /^I should (not )?see a(?:n) "([^"]*)" tag$/ do |not_see, text|
  expect(page.has_selector?(text)).to eq((not_see) ? false : true)
end
