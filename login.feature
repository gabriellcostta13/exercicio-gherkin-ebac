# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que o cliente está na página de login da EBAC-SHOP

  Cenário: Realizar login com dados válidos
    Quando realizar login com credenciais válidas
    Então o cliente deve ser direcionado para a tela de checkout

  Esquema do Cenário: Impedir o login com credenciais inválidas
    Quando realizar login com o usuário <usuario> e a senha <senha>, utilizando credenciais inválidas
    Então o acesso deve ser negado
    E deve ser exibida a mensagem "Usuário ou senha inválidos"

    Exemplos:
      | usuario                    | senha       |
      | cliente@ebacshop.com.br    | SenhaErrada |
      | usuario.invalido@teste.com | Senha@123   |


