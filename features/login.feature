# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que o cliente está na página de login da EBAC-SHOP

  Cenário: Realizar login com dados válidos
    Quando informar o usuário "cliente@ebacshop.com.br"
    E informar a senha "Senha@123"
    E clicar no botão "Login"
    Então o cliente deve ser direcionado para a tela de checkout

  Esquema do Cenário: Impedir login quando um dos campos for inválido
    Quando informar o usuário "<usuario>"
    E informar a senha "<senha>"
    E clicar no botão "Login"
    Então o acesso não deve ser permitido
    E deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | usuario                    | senha       |
      | cliente@ebacshop.com.br    | SenhaErrada |
      | usuario.invalido@teste.com | Senha@123   |
