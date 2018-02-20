When("user visit the site") do
  visit root_path
end

Then("user click on {string} button") do |button|
  click_on(button)
end

Then("He fills in {string} with {string}") do |string, string2|
  fill_in 'Name', :with => 'Fleur'
end
#
# Then("he fills in {string} with {string}") do |string, string2|
#  fill_in "email", :with "wookie@email.com"
# end


# Then("he fills in {string} with {string}") do |field, input|
#   fill_in(field, :with => input)
# end

Then("He clicks {string}") do |string|
  click_on(string)
end

Then("He sees message {string}") do |message|
  page.should have_content message
end
