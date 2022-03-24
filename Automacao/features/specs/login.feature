#language: pt 

Funcionalidade: Logar na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus produtos

Contexto: Logar na plataforma
Dado que faça o login na plataforma

Cenário: Logar na plataforma com dados válidos
Quando  inserir dados válidos
Então deverá ser direcionado para tela checkout

Cenário: Logar na plataforma com dados inválidos 
Quando  inserir dados inválidos 
Então deverá aparecer uma mensagem de alerta "Usuario ou senha inválidos"

Esquema do Cenário: Logar na plataforma com dados inválidos
Quando inserir <usuario> e <senha> 
E clicar em logar
Então deverá aparecer uma mensagem de alerta "Usuario ou senha inválidos"

Exemplos:
|usuario|senha    |
#usuario válido e senha invalida
|Pedro  |123456   |
#usuario inválido e senha válida
|Júlio  |1234567  |
#usuario inválido e senha inválido
|Júlio  |123456   |