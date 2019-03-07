# language: pt

@Test @post
Funcionalidade: Criar posts
	Como uma aplicação cliente
	Desejo criar posts
	Para que haja conteúdo novo no link da Creditas

	Contexto: Ter acesso a API

	Cenario: 16 - Criar um novo post
		Quando cadastrar um novo post no link da Creditas usando dados abaixo:
			| userId	|	2								|
			| title		|	Vem pra creditas!!!				|
			| body		|	As melhores taxas do mercado	|
		Então o status code da reposta será 201

	Cenario: 17 - Criar um get verificando os dados criados
		Quando eu der um get nos dados cadastrados
		Então o status code da resposta será 200
