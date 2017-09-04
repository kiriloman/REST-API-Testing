Given(/^I use GET command on client endpoint$/) do
  @get_info = HTTParty.get 'http://localhost:3000/clientes'
end

Then(/^I should receive all existing clients$/) do
  puts @get_info.body
  puts @get_info.code
  expect(@get_info.code).to eq 200
end
