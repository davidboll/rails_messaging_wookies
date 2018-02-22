Given("following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Then("I see {string}") do |string|
  expect(page).to have_content string
end

When("I click {string} link") do |string|
  click_link(string)
end

Then("I am redirected to inbox page") do
 visit "/mailbox/inbox"
end

When("I choose {string} as a {string}") do |value, option|
  select(value, :from => option)
end

Then("I sees {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
