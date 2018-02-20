Given("I am on the landing-page") do
  visit root_path
end

Given("I click {string}") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |input, value|
  fill_in(input, :with => value)
end

When("I click {string} button") do |name|
  click_button(name)
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

Then("I should be redirected to {string}") do |string|
  visit root_path
end

Then("I should see {string}") do |message|
  expect(page).to have_content(message)
end
