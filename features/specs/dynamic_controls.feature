#language: pt
#utf-8

@Test @Dynamic
Funcionalidade: Interação com os Controles Dinâmicos

	Cenario: 11 - Remover checkbox
		Dado que estou no site determinado
		Quando seleciono o checkbox e clico no botao Remover
		Entao Site atualiza e mostra a mensagem Its gone!

	Cenario: 12 - Adicionar checkbox
		Dado que estou no site determinado
		Quando seleciono o checkbox e clico no botao Remover
		E Site atualiza e mostra a mensagem Its gone!
		E clico no botao Add
		Entao Site atualiza e mostra a mensagem Its back!

	Cenario: 13 - Habilitar
		Dado que estou no site determinado
		Quando seleciono o botao Enable
		Entao Site atualiza e mostra o campo habilitado

	Cenario: 14 - Desabilitar
		Dado que estou no site determinado
		Quando seleciono o botao Enable
		E Site atualiza e mostra o campo habilitado
		E seleciono o botao Disable
		Entao Site atualiza e mostra o campo inibido