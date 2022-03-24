#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho 

Contexto: Acessar página de produtos
Dado que acesse a página de produtos 

Cenário: Validar obrigatoriedade de seleções de cor, tamanho e quantidade
Quando selecionar "cor", "tamanho" e "quantidade"
Então deve exibir uma mensagem "produto adicionado no carrinho"

Cenário: Validar limite de produto por venda maior que o permitido
Quando adicionar os produtos na sacola acima do permitido
Então deve exibir uma mensagem "quantidade de itens acima do permitido"

Cenário: Validar função do botão limpar
Quando adicionar os produtos na sacola acima do permitido
E clicar no botão "limpar" 
Então deve exibir uma mensagem "sem itens na sacola"

Esquema do Cenário: Adicionar produto no carrinho
Quando selecionar o <tamanho>, <cor>, <quantidade>
E clicar no botão Comprar
Então deve exibir uma mensagem "produto adicionado no carrinho"

Exemplos: 
|tamanho | cor      |quantidade |										
| "L"    | "Blue"   | "3"       |
| "M"    | "Orange" | "1"       |
| "XG"   | "Red"    | "2"       |