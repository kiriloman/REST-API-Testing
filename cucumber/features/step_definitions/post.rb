Given(/^I use POST to send correct information to client endpoint$/) do
  @body = {
    "nome": Faker::Name.name,
    "cpf": Faker::Base.numerify('#########'),
    "endereco": Faker::StarWars.planet,
    "usuario": Faker::Pokemon.name,
    "senha": Faker::Base.numerify('inicial####')
  }.to_json
  @post_info = HTTParty.post 'http://localhost:3000/clientes',
    :body => @body,
    :headers => {
        "Content-Type" => 'application/json'
    }
end

Then(/^a new client is successfully created$/) do
  puts @post_info.body
  expect(@post_info.code).to eq 201
end
