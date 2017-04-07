#language: pt
#UTF-8

Funcionalidade: Efetuar testes de API
	
	Eu como usuário
	Quero utilizar as APIs
	Para criar e apagar comentários

	@post
	Cenário: Criar comentário via API
	 Dado que eu estou no endpoint /comments
	 Quando passo os dados necessários para POST	 
	 Então um comentário é criado

	@delete
	Cenário: Deletar o comentário criado via API
	 Dado que eu estou no endpoint /comments
	 Quando passo os dados necessários para DELETE
	 Então o comentário é deletado

	@get
	Cenário: Pegar dados do CEP
	 Dado que eu estou no endpoint dos Correios
	 Quando passo os dados necessários para GET
	 Então informa os dados do CEP