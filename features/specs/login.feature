#language: pt
#utf-8

#Testes escritos em BDD, alguns testes nõa necessariamente precisariam ser escritos porém dado o não conhecimento da maturidade da equipe e incluí algumas situações de testes negativos

Funcionalidade: Login
	Eu como cliente da Creditas
	Quero poder efetuar login
	Para acessar minha solicitacao de emprestimo

	Cenario: 01 - Login com CPF Valido
		Dado que Estou na tela de login
		Quando Informo CPF valido E Senha valida
		Entao Site e direcionado para home de emprestimos

	Cenario: 02 - Login com E-mail Valido
		Dado que Estou na tela de login
		Quando Informo E-mail valido E Senha valida
		Entao Site e direcionado para home de emprestimos

	Cenario: 03 - Login com CPF invalido
		Dado que Estou na tela de login
		Quando Informo CPF invalido E Senha valida
		Entao Site apresenta mensagem "Login ou senha invalidos"

	Cenario: 04 - Login com E-mail invalido
		Dado que Estou na tela de login
		Quando Informo E-mail invalido E Senha valida
		Entao Site apresenta mensagem "Login ou senha invalidos"

	Cenario: 05 - Login com Senha invalida
		Dado que Estou na tela de login
		Quando Informo CPF valido E Senha invalida
		Entao Site apresenta mensagem "Login ou senha invalidos"

	Cenario: 06 - Login com Senha invalida
		Dado que Estou na tela de login
		Quando Informo E-mail valido E Senha invalida
		Entao Site apresenta mensagem "Login ou senha invalidos"

	Cenario: 07 - Login sem preenchimento dos dados
		Dado que Estou na tela de login
		Quando Nao Informo E-mail E Senha
		Entao Site apresenta mensagem "Login ou senha invalidos"

	Cenario: 08 - Esqueci minha senha
		Dado que Estou na tela de login
		Quando clico no link "ESQUECEU A SENHA?"
		Entao Site apresenta tela solicitando dados para recuperacao de senha

	Cenario: 09 - Acesso a Ajuda
		Dado que Estou na tela de login
		Quando clico no link "Ajuda"
		Entao Site e direcionado para tela de "Ajuda"

	Cenario: 10 - Direcionamento para home
		Dado que Estou na tela de login
		Quando clico no logo "Creditas"
		Entao Site e direcionado para tela Inicial