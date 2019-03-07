#Teste de acesso ao site especificado 


#Validação do ccheckbox e do botão
Dado("que estou no site determinado") do
  @DynamicControls = DynamicControls.new
  @DynamicControls.load
  @DynamicControls.validarTextoHomePage()
end

Quando("seleciono o checkbox e clico no botao Remover") do
  @DynamicControls.selecionarCheckbox()
  @DynamicControls.clicarBotaoRemover()
end
  
Entao("Site atualiza e mostra a mensagem Its gone!") do
  @DynamicControls.validarTextoBtnRemover()
end
  
Quando("clico no botao Add") do
  @DynamicControls.clicarBotaoAdd()
end
  
Entao("Site atualiza e mostra a mensagem Its back!") do
  @DynamicControls.validarTextoAdd()
end

#Validação do borão para habilitar e desabilitar campo
Quando("seleciono o botao Enable") do
  @DynamicControls.clicarBotaoEnable()
end

Entao("Site atualiza e mostra o campo habilitado") do
  @DynamicControls.validarCampoHabilitado()
end

Quando("seleciono o botao Disable") do
  @DynamicControls.clicarBotaoDisable()
end

Entao("Site atualiza e mostra o campo inibido") do
  @DynamicControls.validarCampoInibido()
end
