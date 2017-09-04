Given(/^I use PUT to update a client on its endpoint$/) do
  @nome_alterado = Faker::Name.name
  @cpf_alterado = Faker::Base.numerify('#########')
  @endereco_alterado = Faker::StarWars.planet
  @usuario_alterado = Faker::Pokemon.name
  @senha_alterada = Faker::Base.numerify('inicial####')
  @body_put = {
    "nome": @nome_alterado,
    "cpf": @cpf_alterado,
    "endereco": @endereco_alterado,
    "usuario": @usuario_alterado,
    "senha": @senha_alterada
  }.to_json

  @put_info = HTTParty.put 'http://localhost:3000/clientes/1',
	:body => @body_put,
	:headers => {
		"Content-Type" => 'application/json'
	}
end

Then(/^the client is successfully updated$/) do
  expect(@put_info.code).to eq 200
  expect(@put_info["nome"]).to eq @nome_alterado
  expect(@put_info["cpf"]).to eq @cpf_alterado
  expect(@put_info["endereco"]).to eq @endereco_alterado
  expect(@put_info["usuario"]).to eq @usuario_alterado
  expect(@put_info["senha"]).to eq @senha_alterada
end
