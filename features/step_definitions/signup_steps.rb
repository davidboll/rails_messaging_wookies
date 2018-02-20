When("user visit the site") do
  visit root_path
end

Then("user click on {string} button") do |button|
  click_on(button)
end

Then("He fills in {string} with {string}") do |string, string2|
  fill_in 'Name', :with => 'Fleur'
end

Then("he fills in {string} with {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("He clicks {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("He sees message {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
