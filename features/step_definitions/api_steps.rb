Quando("buscar todos os posts do meu blog através da API") do
  @resposta = HTTParty.get(ENVIRONMENT['api']+"/posts")
  puts @resposta.body
end

Então("a resposta trará um total de {int} registros") do |quantidade|
  expect(@resposta.size).to ed(quantidade)
end

#Então("a resposta conterá a mensagem {string}") do |string|
 # pending # Write code here that turns the phrase above into concrete actions
#end

Então("o status code da resposta será {int}") do |status_code|
  expect(@resposta.code).to eq(status_code)
end