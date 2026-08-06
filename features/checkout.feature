# language: pt

Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que o cliente está na tela de cadastro do checkout

  Cenário: Concluir cadastro com dados válidos
    Quando preencher todos os campos obrigatórios com dados válidos
    E clicar no botão "Finalizar compra"
    Então o cadastro deve ser concluído com sucesso
    E o cliente deve prosseguir para a finalização da compra

  Esquema do Cenário: Impedir cadastro com formato de e-mail inválido
    Quando preencher os campos obrigatórios com dados válidos
    E digitar o e-mail "<email>"
    E clicar no botão "Finalizar compra"
    Então o sistema deve impedir o cadastro
    E deve exibir a mensagem "Formato de e-mail inválido"

    Exemplos:
      | email            |
      | cliente          |
      | cliente@         |
      | @ebacshop.com.br |
      | cliente@ebacshop |

  Esquema do Cenário: Impedir cadastro com campo obrigatório vazio
    Quando preencher os campos de cadastro
    E deixar o campo obrigatório "<campo>" em branco
    E clicar no botão "Finalizar compra"
    Então o sistema deve impedir o cadastro
    E deve informar que o campo <campo> é obrigatório

    Exemplos:
      | campo              |
      | Nome               |
      | Sobrenome          |
      | País               |
      | Endereço           |
      | Cidade             |
      | CEP                |
      | Telefone           |
      | Endereço de e-mail |
