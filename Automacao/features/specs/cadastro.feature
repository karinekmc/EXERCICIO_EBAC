#language: pt

Funcionalidade: Tela de Cadastro - Checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra


Contexto: Acessar página de cadastro durante o fechamento de pedido
Dado que acesse a tela de cadastro

Cenário: Validar dados obrigatórios
Quando  preencher todos os campos obrigatórios
E clicar no botão finalizar compra 
Então deverá ser redirecionado para a tela de pagamento 

Cenário: Validar campo e-mail 
Quando  preencher todos os campos obrigatórios
E inserir um e-mail com formato inválido 
Então deverá aparecer uma mensagem de erro "E-mail com formato inválido"

Cenário: Validar campos vazios  
Dado que não preencha os campos vazios
Quando tentar finalizar o cadastro 
Então deverá exibir uma mensagem de alerta "Preencha os campos vazios"

Esquema do Cenário: Validar mensagens
Quando preencher os campos <nome>, <sobrenome>, <país>, <endereço>, <cidade>, <cep>, <telefone> e <endereço de e-mail> 
Entao deve ser apresentado a <mensagem>
Exemplos:
|nome |sobrenome|país  |endereço  |cidade|cep      |telefone  |endereço de e-mail||mensagem|
|Júlio|Souza    |Brasil|          |Osasco|06140-040|90000-0000|júlio123@gmail.com|"Preencha os campos vazios"|
|Júlio|Souza    |Brasil|R. Vitória|Osasco|06140-040|90000-0000|júlio123@gmail-com|"E-mail com formato inválido"|






