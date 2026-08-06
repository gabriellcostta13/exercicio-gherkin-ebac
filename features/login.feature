# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que o cliente está na página de login da EBAC-SHOP

  Cenário: Realizar login com dados válidos
    Quando digitar o usuário "cliente@ebacshop.com.br"
    E digitar a senha "Senha@123"
    E clicar no botão "Entrar"
    Então o cliente deve ser direcionado para a tela de checkout

  Esquema do Cenário: Impedir o login com credenciais inválidas
    Quando digitar o usuário "<usuario>"
    E digitar a senha "<senha>"
    E clicar no botão "Entrar"
    Então o acesso deve ser negado
    E deve ser exibida a mensagem "Usuário ou senha inválidos"

    Exemplos:
      | usuario                    | senha       |
      | cliente@ebacshop.com.br    | SenhaErrada |
      | usuario.invalido@teste.com | Senha@123   |
