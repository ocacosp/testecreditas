#Teste de validação a uma nova guia

Dado("que estou no site indicado") do
  @NewTab = NewTab.new
  @NewTab.load
  @NewTab.validarTextoHomePage()
end
  
Quando("clico no link que está na página") do
  @NewTab.clicarNoLink()
end
  
Entao("site me redireciona para uma nova aba") do
  @NewTab.validarNovaAba()
end