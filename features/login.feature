# language: pt

Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma  
    Para visualizar meus pedidos

Contexto:
    Dado que o cliente está na página de login da EBAC-SHOP

Cenário: Realizar login com dados válidos
    Quando informar o usuário "cliente@ebacshop.com.br"
    E informar a senha "Senha@123"
    E clicar no botão "Login"
    Então o cliente deve ser direcionado para a tela de checkout

Esquema do Cenário: Tentar realizar login com um dos campos inválidos
    Quando informar o usuario "<usuario>"
    E informar a senha "<senha>"
    E clicar no botão "Login"
    Então o acesso não deve ser permitido
    E deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | usuario                    | senha       |
      | cliente@ebacshop.com.br    | SenhaErrada |
      | usuario.invalido@teste.com | Senha@123   |


