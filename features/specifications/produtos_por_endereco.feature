#language: pt

Funcionalidade: Visualizar produtos por endereço
Esta funcionalidade é um pré requisito para que o cliente consiga visualizar os produtos disponiveis em sua região.

@cenario_produtos_disponiveis
Cenário: Visualizar produtos disponíveis para determinada região.
Dado que o cliente acessou o site.
E informou que tem 18 anos ou mais.
Quando informar o endereço.
E clicar clicar em Ver produtos disponíveis.
Então os produtos disponíveis para a região em questão devem ser exibidos ao cliente.

